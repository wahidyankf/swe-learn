from datetime import datetime
from python_hello_libs import get_current_date_time, format_date


def test_get_current_date_time():
    result = get_current_date_time()
    assert isinstance(result, str)
    # Try to parse the result to ensure it's a valid datetime string
    datetime.strptime(result, "%Y-%m-%d %H:%M:%S")


def test_format_date():
    test_date = datetime(2025, 1, 1, 12, 0, 0)
    result = format_date(test_date)
    assert result == "2025-01-01T12:00:00"
