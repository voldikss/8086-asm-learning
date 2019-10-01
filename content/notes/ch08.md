# 第八章 数据处理的两个基本问题

- bx、si、di、bp

  - 只有这 4 个寄存器可以用在 `[...]` 中来进行内存单元的寻址
  - 只能以 4 种组合出现
    - bx 和 si
    - bx 和 di
    - bp 和 si
    - bp 和 di
  - 在 `[...]` 中使用 bp 且未指定段地址时，段地址默认在 **ss** 中

- 寻址方式

  - 直接寻址：`[idata]`
  - 寄存器间接寻址: `[bx/bp/si/di]`
  - 寄存器相对寻址：`[bx/bp/si/di+idata]`
  - 基址变址寻址：
    - `[bx+si]`
    - `[bx+di]`
    - `[bp+si]`
    - `[bp+si]`
  - 相对基址变址寻址：
    - `[bx+si+idata]`
    - `[bx+di+idata]`
    - `[bp+si+idata]`
    - `[bp+si+idata]`

- 指明指令处理的数据的长度

  - 通过寄存器指明：ax 字，al/ah 字节
  - 没有寄存器名时，用操作符 `word/byte ptr` 指明内存单元的长度，如`mov word ptr ds:[0],1`
  - 其他方法：如栈操作只能是字

- `div`
- `dup`
