import configparser

def get_config_value(section, key, file_path):
    config = configparser.ConfigParser()
    config.read(file_path)

    if section in config and key in config[section]:
        return config[section][key]
    else:
        return None
