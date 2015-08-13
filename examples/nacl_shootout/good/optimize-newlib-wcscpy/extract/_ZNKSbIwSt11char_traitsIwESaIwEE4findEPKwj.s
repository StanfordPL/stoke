  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwj, @function

#! file-offset 0x115fa0
#! rip-offset  0xd5fa0
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode             
._ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwj:         #        0xd5fa0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                             #  1     0xd5fa0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                   #  2     0xd5fa5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                             #  3     0xd5fa8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                              #  4     0xd5fad  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                    #  5     0xd5fb2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                                   #  6     0xd5fb4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                    #  7     0xd5fb7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                                   #  8     0xd5fba  3      OPC=movl_r32_r32   
  movl %r12d, %edi                                   #  9     0xd5fbd  3      OPC=movl_r32_r32   
  nop                                                #  10    0xd5fc0  1      OPC=nop            
  nop                                                #  11    0xd5fc1  1      OPC=nop            
  nop                                                #  12    0xd5fc2  1      OPC=nop            
  nop                                                #  13    0xd5fc3  1      OPC=nop            
  nop                                                #  14    0xd5fc4  1      OPC=nop            
  nop                                                #  15    0xd5fc5  1      OPC=nop            
  nop                                                #  16    0xd5fc6  1      OPC=nop            
  nop                                                #  17    0xd5fc7  1      OPC=nop            
  nop                                                #  18    0xd5fc8  1      OPC=nop            
  nop                                                #  19    0xd5fc9  1      OPC=nop            
  nop                                                #  20    0xd5fca  1      OPC=nop            
  nop                                                #  21    0xd5fcb  1      OPC=nop            
  nop                                                #  22    0xd5fcc  1      OPC=nop            
  nop                                                #  23    0xd5fcd  1      OPC=nop            
  nop                                                #  24    0xd5fce  1      OPC=nop            
  nop                                                #  25    0xd5fcf  1      OPC=nop            
  nop                                                #  26    0xd5fd0  1      OPC=nop            
  nop                                                #  27    0xd5fd1  1      OPC=nop            
  nop                                                #  28    0xd5fd2  1      OPC=nop            
  nop                                                #  29    0xd5fd3  1      OPC=nop            
  nop                                                #  30    0xd5fd4  1      OPC=nop            
  nop                                                #  31    0xd5fd5  1      OPC=nop            
  nop                                                #  32    0xd5fd6  1      OPC=nop            
  nop                                                #  33    0xd5fd7  1      OPC=nop            
  nop                                                #  34    0xd5fd8  1      OPC=nop            
  nop                                                #  35    0xd5fd9  1      OPC=nop            
  nop                                                #  36    0xd5fda  1      OPC=nop            
  callq .wcslen                                      #  37    0xd5fdb  5      OPC=callq_label    
  movl %r13d, %edx                                   #  38    0xd5fe0  3      OPC=movl_r32_r32   
  movl %r12d, %esi                                   #  39    0xd5fe3  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                    #  40    0xd5fe6  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                               #  41    0xd5fe8  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                                  #  42    0xd5fed  4      OPC=movq_r64_m64   
  movl %eax, %ecx                                    #  43    0xd5ff1  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                              #  44    0xd5ff3  5      OPC=movq_r64_m64   
  addl $0x18, %esp                                   #  45    0xd5ff8  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                    #  46    0xd5ffb  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                                     #  47    0xd5ffe  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwjj  #  48    0xd6000  5      OPC=jmpq_label_1   
  nop                                                #  49    0xd6005  1      OPC=nop            
  nop                                                #  50    0xd6006  1      OPC=nop            
  nop                                                #  51    0xd6007  1      OPC=nop            
  nop                                                #  52    0xd6008  1      OPC=nop            
  nop                                                #  53    0xd6009  1      OPC=nop            
  nop                                                #  54    0xd600a  1      OPC=nop            
  nop                                                #  55    0xd600b  1      OPC=nop            
  nop                                                #  56    0xd600c  1      OPC=nop            
  nop                                                #  57    0xd600d  1      OPC=nop            
  nop                                                #  58    0xd600e  1      OPC=nop            
  nop                                                #  59    0xd600f  1      OPC=nop            
  nop                                                #  60    0xd6010  1      OPC=nop            
  nop                                                #  61    0xd6011  1      OPC=nop            
  nop                                                #  62    0xd6012  1      OPC=nop            
  nop                                                #  63    0xd6013  1      OPC=nop            
  nop                                                #  64    0xd6014  1      OPC=nop            
  nop                                                #  65    0xd6015  1      OPC=nop            
  nop                                                #  66    0xd6016  1      OPC=nop            
  nop                                                #  67    0xd6017  1      OPC=nop            
  nop                                                #  68    0xd6018  1      OPC=nop            
  nop                                                #  69    0xd6019  1      OPC=nop            
  nop                                                #  70    0xd601a  1      OPC=nop            
  nop                                                #  71    0xd601b  1      OPC=nop            
  nop                                                #  72    0xd601c  1      OPC=nop            
  nop                                                #  73    0xd601d  1      OPC=nop            
  nop                                                #  74    0xd601e  1      OPC=nop            
  nop                                                #  75    0xd601f  1      OPC=nop            
                                                                                                 
.size _ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwj

