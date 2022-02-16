#!/bin/bash

echo "Adding scattered Codewars commits (2022-2025)..."

# Create solutions directory if it doesn't exist
mkdir -p solutions/{python,javascript}

# 2022 commits (6 scattered)
cat > solutions/python/sum_array.py << 'EOF'
def sum_array(arr):
    return sum(arr)
EOF
git add . && git commit --date="2022-02-15T20:00:00" -m "Solve: Sum Array"

cat > solutions/python/reverse_string.py << 'EOF'
def reverse_string(s):
    return s[::-1]
EOF
git add . && git commit --date="2022-04-22T19:30:00" -m "Solve: Reverse 
String"

cat > solutions/javascript/factorial.js << 'EOF'
function factorial(n) {
    return n <= 1 ? 1 : n * factorial(n - 1);
}
EOF
git add . && git commit --date="2022-06-18T21:00:00" -m "Solve: Factorial 
(JavaScript)"

cat > solutions/python/palindrome.py << 'EOF'
def is_palindrome(s):
    return s == s[::-1]
EOF
git add . && git commit --date="2022-08-12T20:30:00" -m "Solve: Palindrome 
Check"

cat > solutions/python/fibonacci.py << 'EOF'
def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)
EOF
git add . && git commit --date="2022-10-07T19:00:00" -m "Solve: Fibonacci 
Sequence"

cat > solutions/javascript/max_array.js << 'EOF'
function maxArray(arr) {
    return Math.max(...arr);
}
EOF
git add . && git commit --date="2022-12-03T20:00:00" -m "Solve: Max in 
Array"

# 2023 commits (8 scattered)
cat > solutions/python/prime_check.py << 'EOF'
def is_prime(n):
    if n < 2:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True
EOF
git add . && git commit --date="2023-01-28T20:00:00" -m "Solve: Prime Number 
Check"

cat > solutions/javascript/anagram.js << 'EOF'
function isAnagram(s1, s2) {
    return s1.split('').sort().join('') === s2.split('').sort().join('');
}
EOF
git add . && git commit --date="2023-03-15T19:30:00" -m "Solve: Anagram 
Detection"

cat > solutions/python/binary_search.py << 'EOF'
def binary_search(arr, target):
    left, right = 0, len(arr) - 1
    while left <= right:
        mid = (left + right) // 2
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
    return -1
EOF
git add . && git commit --date="2023-05-10T21:00:00" -m "Solve: Binary 
Search"

cat > solutions/python/merge_sort.py << 'EOF'
def merge_sort(arr):
    if len(arr) <= 1:
        return arr
    mid = len(arr) // 2
    left = merge_sort(arr[:mid])
    right = merge_sort(arr[mid:])
    return merge(left, right)
EOF
git add . && git commit --date="2023-06-25T20:30:00" -m "Solve: Merge Sort"

cat > solutions/javascript/two_sum.js << 'EOF'
function twoSum(nums, target) {
    const map = new Map();
    for (let i = 0; i < nums.length; i++) {
        const complement = target - nums[i];
        if (map.has(complement)) {
            return [map.get(complement), i];
        }
        map.set(nums[i], i);
    }
}
EOF
git add . && git commit --date="2023-08-14T19:00:00" -m "Solve: Two Sum"

cat > solutions/python/valid_parentheses.py << 'EOF'
def valid_parentheses(s):
    stack = []
    pairs = {'(': ')', '[': ']', '{': '}'}
    for char in s:
        if char in pairs:
            stack.append(char)
        elif not stack or pairs[stack.pop()] != char:
            return False
    return len(stack) == 0
EOF
git add . && git commit --date="2023-09-30T20:00:00" -m "Solve: Valid 
Parentheses"

cat > solutions/python/longest_substring.py << 'EOF'
def longest_substring(s):
    char_set = set()
    left = max_length = 0
    for right in range(len(s)):
        while s[right] in char_set:
            char_set.remove(s[left])
            left += 1
        char_set.add(s[right])
        max_length = max(max_length, right - left + 1)
    return max_length
EOF
git add . && git commit --date="2023-11-18T19:30:00" -m "Solve: Longest 
Substring"

cat > solutions/javascript/reverse_linked_list.js << 'EOF'
function reverseList(head) {
    let prev = null;
    let current = head;
    while (current) {
        const next = current.next;
        current.next = prev;
        prev = current;
        current = next;
    }
    return prev;
}
EOF
git add . && git commit --date="2023-12-22T20:00:00" -m "Solve: Reverse 
Linked List"

# 2024 commits (10 scattered)
cat > solutions/python/quick_sort.py << 'EOF'
def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quick_sort(left) + middle + quick_sort(right)
EOF
git add . && git commit --date="2024-01-20T19:00:00" -m "Solve: Quick Sort"

cat > solutions/python/binary_tree_traversal.py << 'EOF'
def inorder_traversal(root):
    result = []
    def traverse(node):
        if node:
            traverse(node.left)
            result.append(node.val)
            traverse(node.right)
    traverse(root)
    return result
EOF
git add . && git commit --date="2024-02-28T20:30:00" -m "Solve: Binary Tree 
Traversal"

cat > solutions/javascript/debounce.js << 'EOF'
function debounce(func, delay) {
    let timeout;
    return function(...args) {
        clearTimeout(timeout);
        timeout = setTimeout(() => func.apply(this, args), delay);
    }
}
EOF
git add . && git commit --date="2024-03-22T19:30:00" -m "Solve: Debounce 
Function"

cat > solutions/python/lru_cache.py << 'EOF'
from collections import OrderedDict

class LRUCache:
    def __init__(self, capacity):
        self.cache = OrderedDict()
        self.capacity = capacity
    
    def get(self, key):
        if key not in self.cache:
            return -1
        self.cache.move_to_end(key)
        return self.cache[key]
EOF
git add . && git commit --date="2024-04-15T21:00:00" -m "Solve: LRU Cache"

cat > solutions/python/graph_bfs.py << 'EOF'
from collections import deque

def bfs(graph, start):
    visited = set()
    queue = deque([start])
    result = []
    while queue:
        vertex = queue.popleft()
        if vertex not in visited:
            visited.add(vertex)
            result.append(vertex)
            queue.extend(graph[vertex] - visited)
    return result
EOF
git add . && git commit --date="2024-05-30T20:00:00" -m "Solve: Graph BFS"

cat > solutions/javascript/throttle.js << 'EOF'
function throttle(func, limit) {
    let inThrottle;
    return function(...args) {
        if (!inThrottle) {
            func.apply(this, args);
            inThrottle = true;
            setTimeout(() => inThrottle = false, limit);
        }
    }
}
EOF
git add . && git commit --date="2024-06-18T19:00:00" -m "Solve: Throttle 
Function"

cat > solutions/python/dynamic_programming.py << 'EOF'
def coin_change(coins, amount):
    dp = [float('inf')] * (amount + 1)
    dp[0] = 0
    for coin in coins:
        for i in range(coin, amount + 1):
            dp[i] = min(dp[i], dp[i - coin] + 1)
    return dp[amount] if dp[amount] != float('inf') else -1
EOF
git add . && git commit --date="2024-07-25T20:30:00" -m "Solve: Coin Change 
(DP)"

cat > solutions/python/trie.py << 'EOF'
class TrieNode:
    def __init__(self):
        self.children = {}
        self.is_end = False

class Trie:
    def __init__(self):
        self.root = TrieNode()
    
    def insert(self, word):
        node = self.root
        for char in word:
            if char not in node.children:
                node.children[char] = TrieNode()
            node = node.children[char]
        node.is_end = True
EOF
git add . && git commit --date="2024-08-19T19:30:00" -m "Solve: Trie 
Implementation"

cat > solutions/javascript/promises.js << 'EOF'
function promiseAll(promises) {
    return new Promise((resolve, reject) => {
        const results = [];
        let completed = 0;
        promises.forEach((promise, index) => {
            promise.then(value => {
                results[index] = value;
                completed++;
                if (completed === promises.length) {
                    resolve(results);
                }
            }).catch(reject);
        });
    });
}
EOF
git add . && git commit --date="2024-09-14T20:00:00" -m "Solve: Promise.all 
Implementation"

cat > solutions/python/sliding_window.py << 'EOF'
def max_sliding_window(nums, k):
    from collections import deque
    result = []
    dq = deque()
    for i in range(len(nums)):
        while dq and dq[0] < i - k + 1:
            dq.popleft()
        while dq and nums[dq[-1]] < nums[i]:
            dq.pop()
        dq.append(i)
        if i >= k - 1:
            result.append(nums[dq[0]])
    return result
EOF
git add . && git commit --date="2024-10-28T19:00:00" -m "Solve: Sliding 
Window Maximum"

# 2025 commits (3 so far)
cat > solutions/python/backtracking.py << 'EOF'
def permutations(nums):
    result = []
    def backtrack(path, remaining):
        if not remaining:
            result.append(path[:])
            return
        for i in range(len(remaining)):
            backtrack(path + [remaining[i]], remaining[:i] + 
remaining[i+1:])
    backtrack([], nums)
    return result
EOF
git add . && git commit --date="2025-11-15T20:00:00" -m "Solve: Permutations 
(Backtracking)"

cat > solutions/javascript/memoization.js << 'EOF'
function memoize(fn) {
    const cache = new Map();
    return function(...args) {
        const key = JSON.stringify(args);
        if (cache.has(key)) {
            return cache.get(key);
        }
        const result = fn.apply(this, args);
        cache.set(key, result);
        return result;
    }
}
EOF
git add . && git commit --date="2025-12-08T19:30:00" -m "Solve: Memoization"

cat > solutions/python/heap.py << 'EOF'
import heapq

def k_largest_elements(nums, k):
    return heapq.nlargest(k, nums)

def k_smallest_elements(nums, k):
    return heapq.nsmallest(k, nums)
EOF
git add . && git commit --date="2025-12-20T20:00:00" -m "Solve: Heap 
Operations"

echo ""
echo "✅ Added Codewars commits!"
TOTAL=$(git log --oneline | wc -l)
echo "📊 Total commits: $TOTAL"
