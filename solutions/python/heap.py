import heapq

def k_largest_elements(nums, k):
    return heapq.nlargest(k, nums)

def k_smallest_elements(nums, k):
    return heapq.nsmallest(k, nums)
