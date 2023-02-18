from main import sum_numbers


def test_sum_numbers():
    assert sum_numbers(1, 2, 3) == 6, "Should be 6"
    assert sum_numbers(8, 2, 3, 0, 7) == 20, "Should be 20"
    print("YOUR CODE IS CORRECT!")
