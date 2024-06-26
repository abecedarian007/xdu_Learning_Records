# practice 4 实验报告

## 1

### 1. 实验题目

使用回溯算法解决0/1背包问题，并生成决策树。

### 2. 实验目的

- 掌握回溯算法在0/1背包问题中的应用。
- 学习如何通过递归方法探索所有可能的物品组合。
- 分析并理解回溯算法在决策树中的表现。

### 3. 实验设计与分析

- 本实验通过回溯算法解决了0/1背包问题，并绘制了相应的决策树来表示算法的执行过程。

  #### 算法设计

  - 回溯算法：
    - 从第一个物品开始，递归地决定每个物品是否包含在背包中。
    - 对每个物品有两种选择：包含或不包含。
    - 递归的基本情况是达到物品列表的末尾。
    - 在递归的每个步骤中，检查当前的总重量是否超过背包的最大容量。

  为了优化决策过程，算法设计中引入了以下关键策略：

  1. **动态选择**：在每个物品上做出“拿”或“不拿”的选择，依据当前的总重量和总价值进行决策。
  2. **递归回溯**：通过递归探索所有可能的组合，并在递归返回时撤销前一个选择（即回溯）。
  3. **剪枝**：如果加入当前物品后总重量超过背包限制，则终止当前递归分支。

  #### 实验分析

  - **时间复杂度**：理论上，回溯算法的时间复杂度为$O(2^n)$，其中$n$是物品数量，因为每个物品有被包含或不被包含两种可能。
  - **空间复杂度**：空间复杂度为$O(n)$，主要是递归栈的深度。
  - 算法优势与局限：
    - 回溯算法可以找到最优解，适用于物品数量不是特别大的情况。
    - 随着物品数量的增加，计算时间呈指数级增长。

### 4. 实验环境

- 语言：Python
- 解释器：Python 3.8
- 操作系统：Windows 11
- 集成开发环境（IDE）：PyCharm

### 5. 项目测试（功能与性能）

- 功能测试：
  - 测试在给定的五个物品和最大容量100磅的背包上算法的正确性。
  - 测试案例：物品的价值和重量对分别为`[(20, 10), (30, 20), (65, 30), (40, 40), (60, 50)]`。
  - 预期结果：算法应计算出最大的价值组合，并正确显示哪些物品被选取。
- 性能测试：
  - 通过改变物品的数量和背包的容量，测试算法在不同情况下的表现。
  - 性能测试应显示出，算法的执行时间随物品数量的增加而显著增长。

## 2

### 1. 实验题目

使用回溯算法解决8-皇后问题。

### 2. 实验目的

- 掌握回溯算法在解决组合优化问题中的应用。
- 学习如何在棋盘问题中处理冲突。
- 分析并理解递归与回溯在解决复杂约束满足问题中的效果。

### 3. 实验设计与分析

本实验通过回溯算法求解8-皇后问题，即在8×8的棋盘上放置8个皇后，使得它们互不攻击。

- **算法设计**：

  - 回溯算法：
    - 从第一行开始，尝试在每一列放置一个皇后。
    - 对每一个选择，检查放置皇后后是否冲突。
    - 如果一个皇后放置后没有冲突，继续到下一行放置下一个皇后。
    - 如果所有行都成功放置了皇后，记录一种解决方案。
    - 如果在任何行找不到可以放置皇后的列，则回溯到上一行，改变皇后的位置。

- **实验分析**：

  - **时间复杂度**：虽然理论上为$O(n!)$，但由于剪枝（排除冲突的选择），实际的复杂度会低于这个上界。
  - **空间复杂度**：$O(n)$，主要空间消耗来自递归调用栈和棋盘状态的存储。
  - 算法优势与局限：
    - 回溯算法能找到问题的所有解决方案。
    - 适用于小规模或者中等规模的问题，随着问题规模的增加，计算时间快速增长。


### 4. 实验环境

- 语言：Python
- 解释器：Python 3.8
- 操作系统：Windows 11
- 集成开发环境（IDE）：PyCharm

### 5. 项目测试（功能与性能）

- 功能测试：
  - 测试算法是否能正确找到所有可能的8-皇后解决方案。
  - 预期结果：算法应报告所有可能的解决方案的总数，对于8-皇后问题，总共有92种解。
- 性能测试：
  - 通过改变棋盘的大小（例如，解决7-皇后或9-皇后问题），测试算法在不同规模问题上的性能。
  - 性能测试应显示出，算法的执行时间随着棋盘大小的增加而增加。