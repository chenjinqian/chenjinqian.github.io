---
layout: post
title: Rubik in matrix
excerpt: represent rubik cube with complex matrix and some conclusion
categories:
    - paper
tags:
    - paper
layout: post
---
<p>
Rubik cube (3 x 3) is interesting toy with many status. In this paper we build one-to-one map from those status to a complex matrix, and define all operations by this kind of matrix. With help of these defination, we find some invarience which lead to prove of some related conclusion. Also, we convert the "God number" problem to matrix deconpose problem, hope this will help solve it. Finaly, with the prove, if we have manage to get it done, we will have best solve algorithm as side-effect.
</p>

<ol class="org-ol">
<li>matrix represent rubik status.
</li>
</ol>
<p>
1.1 rubik oritation notion.
1.2 matrix map to status.
1.3 operation matrix defination and caculation.
</p>
<ol class="org-ol">
<li>invarience and explain.
</li>
</ol>


<p>
为了更快的写出初稿，现在先用中文写这篇文章。
综述
本文主要讨论三阶魔方，并通过矩阵定义将几个相关问题转化为矩阵分解问题，
另外通过定义不变量证明几个简单的相关结论，并将某些问题（最优解，God Number problem）
通过上述概念重新数学化表述，希望能提供解决问题的新思路。
</p>

<p>
目录
</p>
<ol class="org-ol">
<li>使用矩阵表示魔方状态
</li>
<li>使用矩阵表示变换操作
</li>
<li>几个三阶魔方相关命题
</li>
<li>定义不变量并证明上述命题
</li>
<li>几个未解决问题及使用矩阵概念重新表述问题
</li>
<li>低阶相似问题以及可能有帮助的思路
</li>

<li>1. 使用矩阵表示魔方状态
</li>
</ol>
<p>
三阶魔方有54 个最小颜色块，分为三类，分别为面棱和角。分别为一个，两个色块和三个色块相对关系不变的最小单位。所以后续讨论基于这些单位。
考虑任何两个同一轴线上的面单位，在任何时候都会保持轴线相对的关系。取先后三对轴线建立坐标系，容易证明坐标系的手性也不会改变。
常见魔方颜色为黄白粉红蓝绿，取几何中心作为坐标原点，面单位所在集合轴线为坐标轴，建立笛卡儿坐标系，使得xyz 分别对应黄粉蓝色。
状态的定义为，上述坐标定义下，各个单位在空间的分布。
</p>

<p>
其中每个单位的分布由两部分组成，位置和相位。位置即为改单位中心的坐标，相位指能唯一区分该单位各个颜色块状态的数字，这里不妨称为自旋角。
自旋角定义有任意性，与具体的约定方式有关。为了后续计算方便，以及直观性，这里自旋角取如下约定：
（中心方块只有相位区别，坐标不变，相位采取额外定义）
各单位优先取蓝色或黄色块，次优选择黄白色块，取其法线做为该单位的法向。魔方初始状态时各色块的法向作为其对应坐标的法向向。
(pic 1, ne of one unit )
(pic 2, ne of position)
对于任意状态，考虑一个单位，考虑原点到该色块坐标连线向外方向，用右手法则旋转该单位，如果旋转角度为&theta; 时，该色块的法向与坐标法向相同，
则称该单位的相位为&theta;。
由定义可知，初始状态时，各单位的相位均为零。
</p>
