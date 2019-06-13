# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
  return true if root.nil?
  chk_mirror(root.left, root.right)
end

def chk_mirror(l, r)
  return true  if l.nil? && r.nil?
  return false if l.nil? || r.nil?
  return false unless l.val.eql?(r.val) 

  chk_mirror(l.left, r.right) && chk_mirror(l.right, r.left)
end

