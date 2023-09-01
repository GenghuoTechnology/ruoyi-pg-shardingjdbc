export  function getLabelByValue(tree, value) {
  for (const node of tree) {
    if (node.value === value) {
      return node.label; // Return the label if the value matches
    }
    if (node.children) {
      const label = getLabelByValue(node.children, value);
      if (label) {
        return label; // Return the label if found in the children
      }
    }
  }
  return ""; // Return null if the value is not found in the tree
}
