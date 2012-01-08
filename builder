#! /bin/sh

function create_custom_builder
{
	echo "Do you need a custom builder before compilation? (y/n)"
	read response

	case $response in
		yes|Yes|y)
			get_custom_builder_path
			;;
		no|No|n)
			builder="no"
			;;
	esac
}

function get_custom_builder_path
{
	echo "Please specify the path to your custom builder relative to the app root:"
	read builder

	# testing if the file exists
	if [[ !(-f "$CURRENT_DIRECTORY/$builder") ]]; then
		cant_find_custom_builder
	else
		echo "Path to the custom builder: $CURRENT_DIRECTORY/$builder"
	fi
}

function cant_find_custom_builder
{
	echo "Error: Unable to find the file $CURRENT_DIRECTORY/$builder"
	builder="no"
	echo "Do you wish to create an empty file at the given path and fill it later? (y/n)"
	read response

	case $response in
		yes|Yes|y)
			echo "Creating custom builder shell script..."
			echo "#! /bin/sh" >> $CURRENT_DIRECTORY/$builder
			chmod u+x $CURRENT_DIRECTORY/$builder
			;;
		no|No|n)
			echo "Still want to configure the custom builder path now? (y/n)"
			read response
			case $response in
				yes|Yes|y)
					get_custom_builder_path
					;;
				no|No|n)
					builder="no"
					;;
			esac
			;;
	esac
}