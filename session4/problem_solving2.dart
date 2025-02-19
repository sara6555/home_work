class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> nums2 = nums.toSet();
    if (nums.length == nums2.length) {
      return false;
    } else {
      return true;
    }
  }
}
