from datetime import datetime


def get_current_date_time() -> str:
    """Get the current date and time in a formatted string.

    Returns:
        str: Current date and time in the format YYYY-MM-DD HH:MM:SS
    """
    current_time = datetime.now()
    formatted_time = current_time.strftime("%Y-%m-%d %H:%M:%S")
    return formatted_time


def format_date(date: datetime) -> str:
    """Format a datetime object into ISO format string.

    Args:
        date (datetime): The datetime object to format

    Returns:
        str: The formatted date string in ISO format
    """
    return date.isoformat()
