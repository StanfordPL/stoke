  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    31 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wcpcpy:                        #        0     0      OPC=<label>         
  movl %edi, %eax               #  1     0     2      OPC=movl_r32_r32_1  
  jmpq .L_b                     #  2     0x2   2      OPC=jmpq_label      
  nop                           #  3     0x4   1      OPC=nop             
  nop                           #  4     0x5   1      OPC=nop             
  nop                           #  5     0x6   1      OPC=nop             
  nop                           #  6     0x7   1      OPC=nop             
  nop                           #  7     0x8   1      OPC=nop             
  nopl %eax                     #  8     0x9   3      OPC=nopl_r32        
  nop                           #  9     0xc   1      OPC=nop             
  nop                           #  10    0xd   1      OPC=nop             
  nop                           #  11    0xe   1      OPC=nop             
  nop                           #  12    0xf   1      OPC=nop             
  nop                           #  13    0x10  1      OPC=nop             
  nop                           #  14    0x11  1      OPC=nop             
  nop                           #  15    0x12  1      OPC=nop             
  nop                           #  16    0x13  1      OPC=nop             
  nop                           #  17    0x14  1      OPC=nop             
  nop                           #  18    0x15  1      OPC=nop             
  nop                           #  19    0x16  1      OPC=nop             
  nop                           #  20    0x17  1      OPC=nop             
  nop                           #  21    0x18  1      OPC=nop             
  nop                           #  22    0x19  1      OPC=nop             
  nop                           #  23    0x1a  1      OPC=nop             
  nop                           #  24    0x1b  1      OPC=nop             
  nop                           #  25    0x1c  1      OPC=nop             
  nop                           #  26    0x1d  1      OPC=nop             
  nop                           #  27    0x1e  1      OPC=nop             
  nop                           #  28    0x1f  1      OPC=nop             
.L_8:                           #        0x20  0      OPC=<label>         
  nop                           #  29    0x20  1      OPC=nop             
  nop                           #  30    0x21  1      OPC=nop             
  nop                           #  31    0x22  1      OPC=nop             
  nop                           #  32    0x23  1      OPC=nop             
  nop                           #  33    0x24  1      OPC=nop             
  nop                           #  34    0x25  1      OPC=nop             
  nop                           #  35    0x26  1      OPC=nop             
  nop                           #  36    0x27  1      OPC=nop             
  nop                           #  37    0x28  1      OPC=nop             
  nop                           #  38    0x29  1      OPC=nop             
  nop                           #  39    0x2a  1      OPC=nop             
  nop                           #  40    0x2b  1      OPC=nop             
  nop                           #  41    0x2c  1      OPC=nop             
  nop                           #  42    0x2d  1      OPC=nop             
  nop                           #  43    0x2e  1      OPC=nop             
  movq %rcx, %rax               #  44    0x2f  3      OPC=movq_r64_r64_1  
  nop                           #  45    0x32  1      OPC=nop             
  nop                           #  46    0x33  1      OPC=nop             
  nop                           #  47    0x34  1      OPC=nop             
  nop                           #  48    0x35  1      OPC=nop             
  nop                           #  49    0x36  1      OPC=nop             
  nop                           #  50    0x37  1      OPC=nop             
  nop                           #  51    0x38  1      OPC=nop             
  nop                           #  52    0x39  1      OPC=nop             
  nop                           #  53    0x3a  1      OPC=nop             
  nop                           #  54    0x3b  1      OPC=nop             
  nop                           #  55    0x3c  1      OPC=nop             
  nop                           #  56    0x3d  1      OPC=nop             
  nop                           #  57    0x3e  1      OPC=nop             
  nop                           #  58    0x3f  1      OPC=nop             
.L_b:                           #        0x40  0      OPC=<label>         
  addl $0x4, %esi               #  59    0x40  3      OPC=addl_r32_imm8   
  movl -0x4(%r15,%rsi,1), %edx  #  60    0x43  5      OPC=movl_r32_m32    
  leal 0x4(%rax), %ecx          #  61    0x48  3      OPC=leal_r32_m64    
  movl %edx, -0x4(%r15,%rcx,1)  #  62    0x4b  5      OPC=movl_m32_r32    
  negl %edx                     #  63    0x50  2      OPC=negl_r32        
  jne .L_8                      #  64    0x52  2      OPC=jne_label       
  nop                           #  65    0x54  1      OPC=nop             
  nop                           #  66    0x55  1      OPC=nop             
  nop                           #  67    0x56  1      OPC=nop             
  nop                           #  68    0x57  1      OPC=nop             
  nop                           #  69    0x58  1      OPC=nop             
  nop                           #  70    0x59  1      OPC=nop             
  nop                           #  71    0x5a  1      OPC=nop             
  nop                           #  72    0x5b  1      OPC=nop             
  nop                           #  73    0x5c  1      OPC=nop             
  nop                           #  74    0x5d  1      OPC=nop             
  nop                           #  75    0x5e  1      OPC=nop             
  nop                           #  76    0x5f  1      OPC=nop             
  nop                           #  77    0x60  1      OPC=nop             
  nop                           #  78    0x61  1      OPC=nop             
  nop                           #  79    0x62  1      OPC=nop             
  popq %r11                     #  80    0x63  2      OPC=popq_r64_1      
  andl $0xe0, %r11d             #  81    0x65  4      OPC=andl_r32_imm8   
  addq %r15, %r11               #  82    0x69  3      OPC=addq_r64_r64    
  jmpq %r11                     #  83    0x6c  3      OPC=jmpq_r64        
                                                                          
.size wcpcpy, .-wcpcpy
