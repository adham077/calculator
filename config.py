import sys

def write_to_config_file(keywords, filename="config.h"):
    """
    Writes #define statements to a configuration file for given keywords.

    :param keywords: List of keywords to define in the configuration file.
    :param filename: Name of the configuration file. Default is "configuration.h".
    """
    try:
        with open(filename, "w") as file:
            for keyword in keywords:
                file.write(f"#define {keyword}\n")
        print(f"Configuration file '{filename}' written successfully.")
    except Exception as e:
        print(f"Error writing to configuration file: {e}")

if __name__ == "__main__":
    # Keywords supported by the script
    supported_keywords = {"add", "sub", "mul", "mod", "div"}

    # Get arguments from the terminal
    args = sys.argv[1:]

    # Validate arguments
    invalid_args = [arg for arg in args if arg not in supported_keywords]
    if invalid_args:
        print(f"Invalid keywords: {', '.join(invalid_args)}")
        print(f"Supported keywords are: {', '.join(supported_keywords)}")
    else:
        write_to_config_file(args)
