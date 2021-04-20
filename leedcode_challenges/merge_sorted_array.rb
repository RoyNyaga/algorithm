def merge(nums1, m, nums2, n)
    nums1_without_space = nums1[0..n-1]
    join_arr = nums1_without_space + nums2 
    return join_arr.sort
end

nums1 = [1,2,3,0,0,0]
m = 3
nums2 = [2,5,6]
n = 3
p merge(nums1, m, nums2, n)
