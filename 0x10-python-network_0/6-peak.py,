def find_peak(list_of_integers):
    """
    Find a peak in a list of unsorted integers.

    Args:
    - list_of_integers: List of integers

    Returns:
    - The peak value found in the list
    """
    if not list_of_integers:
        return None

    low, high = 0, len(list_of_integers) - 1

    while low < high:
        mid = (low + high) // 2

        if list_of_integers[mid] > list_of_integers[mid + 1]:
            # Peak must be in the left half (including mid)
            high = mid
        else:
            # Peak must be in the right half
            low = mid + 1

    # At the end of the loop, low and high point to the same element, which is a peak
    return list_of_integers[low]
