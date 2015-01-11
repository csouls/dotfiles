let g:textobj_multiblock_blocks = [
\ [ '(', ')' ],
\ [ '[', ']' ],
\ [ '{', '}' ],
\ [ '<', '>', 1 ],
\ [ '"', '"', 1 ],
\ [ "'", "'", 1 ],
\ [ "_", "_", 1 ],
\]

omap is <Plug>(textobj-multiblock-i)
omap as <Plug>(textobj-multiblock-a)
vmap is <Plug>(textobj-multiblock-i)
vmap as <Plug>(textobj-multiblock-a)

