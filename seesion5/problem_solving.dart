/*Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.*/

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int j = 0;
    for (int i = 1; i < nums.length; i++) {
      if (target == nums[j] + nums[i]) {
        return [j, i];
      }
      if (i == nums.length - 1) {
        j++;
        i = j;
      }
    }
    return [];
  }
}
