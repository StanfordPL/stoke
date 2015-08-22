  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x60160
#! rip-offset  0x20160
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.frame_dummy:                   #        0x20160  0      OPC=<label>         
  pushq %rbp                    #  1     0x20160  1      OPC=pushq_r64_1     
  movl $0x10f3e0, %eax          #  2     0x20161  5      OPC=movl_r32_imm32  
  testl %eax, %eax              #  3     0x20166  2      OPC=testl_r32_r32   
  movq %rsp, %rbp               #  4     0x20168  3      OPC=movq_r64_r64    
  je .L_20180                   #  5     0x2016b  2      OPC=je_label        
  movl $0x100710d0, %esi        #  6     0x2016d  5      OPC=movl_r32_imm32  
  movl $0x10051010, %edi        #  7     0x20172  5      OPC=movl_r32_imm32  
  nop                           #  8     0x20177  1      OPC=nop             
  nop                           #  9     0x20178  1      OPC=nop             
  nop                           #  10    0x20179  1      OPC=nop             
  nop                           #  11    0x2017a  1      OPC=nop             
  callq .__register_frame_info  #  12    0x2017b  5      OPC=callq_label     
.L_20180:                       #        0x20180  0      OPC=<label>         
  movl 0x10050322(%rip), %eax   #  13    0x20180  6      OPC=movl_r32_m32    
  testl %eax, %eax              #  14    0x20186  2      OPC=testl_r32_r32   
  je .L_201c0                   #  15    0x20188  2      OPC=je_label        
  movl $0x0, %eax               #  16    0x2018a  5      OPC=movl_r32_imm32  
  movl %eax, %eax               #  17    0x2018f  2      OPC=movl_r32_r32    
  testq %rax, %rax              #  18    0x20191  3      OPC=testq_r64_r64   
  je .L_201c0                   #  19    0x20194  2      OPC=je_label        
  popq %r11                     #  20    0x20196  2      OPC=popq_r64_1      
  movl %r11d, %ebp              #  21    0x20198  3      OPC=movl_r32_r32    
  addq %r15, %rbp               #  22    0x2019b  3      OPC=addq_r64_r64    
  xchgw %ax, %ax                #  23    0x2019e  2      OPC=xchgw_ax_r16    
  movl $0x100704a8, %edi        #  24    0x201a0  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %eax        #  25    0x201a5  6      OPC=andl_r32_imm32  
  nop                           #  26    0x201ab  1      OPC=nop             
  nop                           #  27    0x201ac  1      OPC=nop             
  nop                           #  28    0x201ad  1      OPC=nop             
  addq %r15, %rax               #  29    0x201ae  3      OPC=addq_r64_r64    
  jmpq %rax                     #  30    0x201b1  2      OPC=jmpq_r64        
  nop                           #  31    0x201b3  1      OPC=nop             
  nop                           #  32    0x201b4  1      OPC=nop             
  nop                           #  33    0x201b5  1      OPC=nop             
  nop                           #  34    0x201b6  1      OPC=nop             
  nop                           #  35    0x201b7  1      OPC=nop             
  nop                           #  36    0x201b8  1      OPC=nop             
  nop                           #  37    0x201b9  1      OPC=nop             
  nop                           #  38    0x201ba  1      OPC=nop             
  nop                           #  39    0x201bb  1      OPC=nop             
  nop                           #  40    0x201bc  1      OPC=nop             
  nop                           #  41    0x201bd  1      OPC=nop             
  nop                           #  42    0x201be  1      OPC=nop             
  nop                           #  43    0x201bf  1      OPC=nop             
  nop                           #  44    0x201c0  1      OPC=nop             
  nop                           #  45    0x201c1  1      OPC=nop             
  nop                           #  46    0x201c2  1      OPC=nop             
  nop                           #  47    0x201c3  1      OPC=nop             
  nop                           #  48    0x201c4  1      OPC=nop             
  nop                           #  49    0x201c5  1      OPC=nop             
.L_201c0:                       #        0x201c6  0      OPC=<label>         
  popq %r11                     #  50    0x201c6  2      OPC=popq_r64_1      
  movl %r11d, %ebp              #  51    0x201c8  3      OPC=movl_r32_r32    
  addq %r15, %rbp               #  52    0x201cb  3      OPC=addq_r64_r64    
  popq %r11                     #  53    0x201ce  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  54    0x201d0  7      OPC=andl_r32_imm32  
  nop                           #  55    0x201d7  1      OPC=nop             
  nop                           #  56    0x201d8  1      OPC=nop             
  nop                           #  57    0x201d9  1      OPC=nop             
  nop                           #  58    0x201da  1      OPC=nop             
  addq %r15, %r11               #  59    0x201db  3      OPC=addq_r64_r64    
  jmpq %r11                     #  60    0x201de  3      OPC=jmpq_r64        
  nop                           #  61    0x201e1  1      OPC=nop             
  nop                           #  62    0x201e2  1      OPC=nop             
  nop                           #  63    0x201e3  1      OPC=nop             
  nop                           #  64    0x201e4  1      OPC=nop             
  nop                           #  65    0x201e5  1      OPC=nop             
  nop                           #  66    0x201e6  1      OPC=nop             
  nop                           #  67    0x201e7  1      OPC=nop             
  nop                           #  68    0x201e8  1      OPC=nop             
  nop                           #  69    0x201e9  1      OPC=nop             
  nop                           #  70    0x201ea  1      OPC=nop             
  nop                           #  71    0x201eb  1      OPC=nop             
  nop                           #  72    0x201ec  1      OPC=nop             
                                                                             
.size frame_dummy, .-frame_dummy

