  .text
  .globl clock
  .type clock, @function

#! file-offset 0x151100
#! rip-offset  0x111100
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.clock:                       #        0x111100  0      OPC=<label>           
  pushq %rbx                  #  1     0x111100  1      OPC=pushq_r64_1       
  subl $0x10, %esp            #  2     0x111101  3      OPC=subl_r32_imm8     
  addq %r15, %rsp             #  3     0x111104  3      OPC=addq_r64_r64      
  movl 0xff6814b(%rip), %eax  #  4     0x111107  6      OPC=movl_r32_m32      
  leal 0xc(%rsp), %edi        #  5     0x11110d  4      OPC=leal_r32_m16      
  nop                         #  6     0x111111  1      OPC=nop               
  nop                         #  7     0x111112  1      OPC=nop               
  nop                         #  8     0x111113  1      OPC=nop               
  nop                         #  9     0x111114  1      OPC=nop               
  nop                         #  10    0x111115  1      OPC=nop               
  nop                         #  11    0x111116  1      OPC=nop               
  nop                         #  12    0x111117  1      OPC=nop               
  andl $0xffffffe0, %eax      #  13    0x111118  6      OPC=andl_r32_imm32    
  nop                         #  14    0x11111e  1      OPC=nop               
  nop                         #  15    0x11111f  1      OPC=nop               
  nop                         #  16    0x111120  1      OPC=nop               
  addq %r15, %rax             #  17    0x111121  3      OPC=addq_r64_r64      
  callq %rax                  #  18    0x111124  2      OPC=callq_r64         
  testl %eax, %eax            #  19    0x111126  2      OPC=testl_r32_r32     
  movl %eax, %ebx             #  20    0x111128  2      OPC=movl_r32_r32      
  jne .L_111140               #  21    0x11112a  2      OPC=jne_label         
  movl 0xc(%rsp), %eax        #  22    0x11112c  4      OPC=movl_r32_m32      
  addl $0x10, %esp            #  23    0x111130  3      OPC=addl_r32_imm8     
  addq %r15, %rsp             #  24    0x111133  3      OPC=addq_r64_r64      
  popq %rbx                   #  25    0x111136  1      OPC=popq_r64_1        
  popq %r11                   #  26    0x111137  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  27    0x111139  7      OPC=andl_r32_imm32    
  nop                         #  28    0x111140  1      OPC=nop               
  nop                         #  29    0x111141  1      OPC=nop               
  nop                         #  30    0x111142  1      OPC=nop               
  nop                         #  31    0x111143  1      OPC=nop               
  addq %r15, %r11             #  32    0x111144  3      OPC=addq_r64_r64      
  jmpq %r11                   #  33    0x111147  3      OPC=jmpq_r64          
  nop                         #  34    0x11114a  1      OPC=nop               
  nop                         #  35    0x11114b  1      OPC=nop               
  nop                         #  36    0x11114c  1      OPC=nop               
.L_111140:                    #        0x11114d  0      OPC=<label>           
  nop                         #  37    0x11114d  1      OPC=nop               
  nop                         #  38    0x11114e  1      OPC=nop               
  nop                         #  39    0x11114f  1      OPC=nop               
  nop                         #  40    0x111150  1      OPC=nop               
  nop                         #  41    0x111151  1      OPC=nop               
  nop                         #  42    0x111152  1      OPC=nop               
  nop                         #  43    0x111153  1      OPC=nop               
  nop                         #  44    0x111154  1      OPC=nop               
  nop                         #  45    0x111155  1      OPC=nop               
  nop                         #  46    0x111156  1      OPC=nop               
  nop                         #  47    0x111157  1      OPC=nop               
  nop                         #  48    0x111158  1      OPC=nop               
  nop                         #  49    0x111159  1      OPC=nop               
  nop                         #  50    0x11115a  1      OPC=nop               
  nop                         #  51    0x11115b  1      OPC=nop               
  nop                         #  52    0x11115c  1      OPC=nop               
  nop                         #  53    0x11115d  1      OPC=nop               
  nop                         #  54    0x11115e  1      OPC=nop               
  nop                         #  55    0x11115f  1      OPC=nop               
  nop                         #  56    0x111160  1      OPC=nop               
  nop                         #  57    0x111161  1      OPC=nop               
  nop                         #  58    0x111162  1      OPC=nop               
  nop                         #  59    0x111163  1      OPC=nop               
  nop                         #  60    0x111164  1      OPC=nop               
  nop                         #  61    0x111165  1      OPC=nop               
  nop                         #  62    0x111166  1      OPC=nop               
  nop                         #  63    0x111167  1      OPC=nop               
  callq .__errno              #  64    0x111168  5      OPC=callq_label       
  movl %eax, %eax             #  65    0x11116d  2      OPC=movl_r32_r32      
  movl %eax, %eax             #  66    0x11116f  2      OPC=movl_r32_r32      
  movl %ebx, (%r15,%rax,1)    #  67    0x111171  4      OPC=movl_m32_r32      
  addl $0x10, %esp            #  68    0x111175  3      OPC=addl_r32_imm8     
  addq %r15, %rsp             #  69    0x111178  3      OPC=addq_r64_r64      
  movl $0xffffffff, %eax      #  70    0x11117b  6      OPC=movl_r32_imm32_1  
  popq %rbx                   #  71    0x111181  1      OPC=popq_r64_1        
  popq %r11                   #  72    0x111182  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  73    0x111184  7      OPC=andl_r32_imm32    
  nop                         #  74    0x11118b  1      OPC=nop               
  nop                         #  75    0x11118c  1      OPC=nop               
  nop                         #  76    0x11118d  1      OPC=nop               
  nop                         #  77    0x11118e  1      OPC=nop               
  addq %r15, %r11             #  78    0x11118f  3      OPC=addq_r64_r64      
  jmpq %r11                   #  79    0x111192  3      OPC=jmpq_r64          
                                                                              
.size clock, .-clock

