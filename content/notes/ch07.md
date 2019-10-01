# 第七章 更灵活的定位内存地址的方法

- `[bx+idata]` 表示一个内存单元，其偏移地址为 (bx) + idata

- `si`, `di` 寄存器：和 `bx` 功能相似，但是其不能分成两个 8 位寄存器使用

- `[bx+si]`

- `[bx+di]`

- `[bx][si/di]` 相当于 `[bx+si/di]`

- `[bx+si/di+idata]`
