  .text
  .globl tp_add_job
  .type tp_add_job, @function

#! file-offset 0x639a0
#! rip-offset  0x239a0
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.tp_add_job:                   #        0x239a0  0      OPC=<label>         
  movl %edi, %edi              #  1     0x239a0  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0x239a2  2      OPC=movl_r32_r32    
  movl %edx, %edx              #  3     0x239a4  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  4     0x239a6  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax  #  5     0x239a8  5      OPC=movl_r32_m32    
  movl %edi, %edi              #  6     0x239ad  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rdi,1), %eax  #  7     0x239af  5      OPC=cmpl_r32_m32    
  jge .L_239e0                 #  8     0x239b4  2      OPC=jge_label       
  shll $0x3, %eax              #  9     0x239b6  3      OPC=shll_r32_imm8   
  movl %edi, %edi              #  10    0x239b9  2      OPC=movl_r32_r32    
  addl (%r15,%rdi,1), %eax     #  11    0x239bb  4      OPC=addl_r32_m32    
  nop                          #  12    0x239bf  1      OPC=nop             
  movl %eax, %eax              #  13    0x239c0  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rax,1)     #  14    0x239c2  4      OPC=movl_m32_r32    
  movl %eax, %eax              #  15    0x239c6  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rax,1)  #  16    0x239c8  5      OPC=movl_m32_r32    
  movl %edi, %edi              #  17    0x239cd  2      OPC=movl_r32_r32    
  addl $0x1, 0x8(%r15,%rdi,1)  #  18    0x239cf  6      OPC=addl_m32_imm8   
  nop                          #  19    0x239d5  1      OPC=nop             
  nop                          #  20    0x239d6  1      OPC=nop             
  nop                          #  21    0x239d7  1      OPC=nop             
  nop                          #  22    0x239d8  1      OPC=nop             
  nop                          #  23    0x239d9  1      OPC=nop             
  nop                          #  24    0x239da  1      OPC=nop             
  nop                          #  25    0x239db  1      OPC=nop             
  nop                          #  26    0x239dc  1      OPC=nop             
  nop                          #  27    0x239dd  1      OPC=nop             
  nop                          #  28    0x239de  1      OPC=nop             
  nop                          #  29    0x239df  1      OPC=nop             
.L_239e0:                      #        0x239e0  0      OPC=<label>         
  popq %r11                    #  30    0x239e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  31    0x239e2  7      OPC=andl_r32_imm32  
  nop                          #  32    0x239e9  1      OPC=nop             
  nop                          #  33    0x239ea  1      OPC=nop             
  nop                          #  34    0x239eb  1      OPC=nop             
  nop                          #  35    0x239ec  1      OPC=nop             
  addq %r15, %r11              #  36    0x239ed  3      OPC=addq_r64_r64    
  jmpq %r11                    #  37    0x239f0  3      OPC=jmpq_r64        
  nop                          #  38    0x239f3  1      OPC=nop             
  nop                          #  39    0x239f4  1      OPC=nop             
  nop                          #  40    0x239f5  1      OPC=nop             
  nop                          #  41    0x239f6  1      OPC=nop             
  nop                          #  42    0x239f7  1      OPC=nop             
  nop                          #  43    0x239f8  1      OPC=nop             
  nop                          #  44    0x239f9  1      OPC=nop             
  nop                          #  45    0x239fa  1      OPC=nop             
  nop                          #  46    0x239fb  1      OPC=nop             
  nop                          #  47    0x239fc  1      OPC=nop             
  nop                          #  48    0x239fd  1      OPC=nop             
  nop                          #  49    0x239fe  1      OPC=nop             
  nop                          #  50    0x239ff  1      OPC=nop             
  nop                          #  51    0x23a00  1      OPC=nop             
  nop                          #  52    0x23a01  1      OPC=nop             
  nop                          #  53    0x23a02  1      OPC=nop             
  nop                          #  54    0x23a03  1      OPC=nop             
  nop                          #  55    0x23a04  1      OPC=nop             
  nop                          #  56    0x23a05  1      OPC=nop             
  nop                          #  57    0x23a06  1      OPC=nop             
                                                                            
.size tp_add_job, .-tp_add_job

