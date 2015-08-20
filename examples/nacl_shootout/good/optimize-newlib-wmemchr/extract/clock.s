  .text
  .globl clock
  .type clock, @function

#! file-offset 0x151400
#! rip-offset  0x111400
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.clock:                       #        0x111400  0      OPC=<label>           
  pushq %rbx                  #  1     0x111400  1      OPC=pushq_r64_1       
  subl $0x10, %esp            #  2     0x111401  3      OPC=subl_r32_imm8     
  addq %r15, %rsp             #  3     0x111404  3      OPC=addq_r64_r64      
  movl 0xff67e4b(%rip), %eax  #  4     0x111407  6      OPC=movl_r32_m32      
  leal 0xc(%rsp), %edi        #  5     0x11140d  4      OPC=leal_r32_m16      
  nop                         #  6     0x111411  1      OPC=nop               
  nop                         #  7     0x111412  1      OPC=nop               
  nop                         #  8     0x111413  1      OPC=nop               
  nop                         #  9     0x111414  1      OPC=nop               
  nop                         #  10    0x111415  1      OPC=nop               
  nop                         #  11    0x111416  1      OPC=nop               
  nop                         #  12    0x111417  1      OPC=nop               
  andl $0xffffffe0, %eax      #  13    0x111418  6      OPC=andl_r32_imm32    
  nop                         #  14    0x11141e  1      OPC=nop               
  nop                         #  15    0x11141f  1      OPC=nop               
  nop                         #  16    0x111420  1      OPC=nop               
  addq %r15, %rax             #  17    0x111421  3      OPC=addq_r64_r64      
  callq %rax                  #  18    0x111424  2      OPC=callq_r64         
  testl %eax, %eax            #  19    0x111426  2      OPC=testl_r32_r32     
  movl %eax, %ebx             #  20    0x111428  2      OPC=movl_r32_r32      
  jne .L_111440               #  21    0x11142a  2      OPC=jne_label         
  movl 0xc(%rsp), %eax        #  22    0x11142c  4      OPC=movl_r32_m32      
  addl $0x10, %esp            #  23    0x111430  3      OPC=addl_r32_imm8     
  addq %r15, %rsp             #  24    0x111433  3      OPC=addq_r64_r64      
  popq %rbx                   #  25    0x111436  1      OPC=popq_r64_1        
  popq %r11                   #  26    0x111437  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  27    0x111439  7      OPC=andl_r32_imm32    
  nop                         #  28    0x111440  1      OPC=nop               
  nop                         #  29    0x111441  1      OPC=nop               
  nop                         #  30    0x111442  1      OPC=nop               
  nop                         #  31    0x111443  1      OPC=nop               
  addq %r15, %r11             #  32    0x111444  3      OPC=addq_r64_r64      
  jmpq %r11                   #  33    0x111447  3      OPC=jmpq_r64          
  nop                         #  34    0x11144a  1      OPC=nop               
  nop                         #  35    0x11144b  1      OPC=nop               
  nop                         #  36    0x11144c  1      OPC=nop               
.L_111440:                    #        0x11144d  0      OPC=<label>           
  nop                         #  37    0x11144d  1      OPC=nop               
  nop                         #  38    0x11144e  1      OPC=nop               
  nop                         #  39    0x11144f  1      OPC=nop               
  nop                         #  40    0x111450  1      OPC=nop               
  nop                         #  41    0x111451  1      OPC=nop               
  nop                         #  42    0x111452  1      OPC=nop               
  nop                         #  43    0x111453  1      OPC=nop               
  nop                         #  44    0x111454  1      OPC=nop               
  nop                         #  45    0x111455  1      OPC=nop               
  nop                         #  46    0x111456  1      OPC=nop               
  nop                         #  47    0x111457  1      OPC=nop               
  nop                         #  48    0x111458  1      OPC=nop               
  nop                         #  49    0x111459  1      OPC=nop               
  nop                         #  50    0x11145a  1      OPC=nop               
  nop                         #  51    0x11145b  1      OPC=nop               
  nop                         #  52    0x11145c  1      OPC=nop               
  nop                         #  53    0x11145d  1      OPC=nop               
  nop                         #  54    0x11145e  1      OPC=nop               
  nop                         #  55    0x11145f  1      OPC=nop               
  nop                         #  56    0x111460  1      OPC=nop               
  nop                         #  57    0x111461  1      OPC=nop               
  nop                         #  58    0x111462  1      OPC=nop               
  nop                         #  59    0x111463  1      OPC=nop               
  nop                         #  60    0x111464  1      OPC=nop               
  nop                         #  61    0x111465  1      OPC=nop               
  nop                         #  62    0x111466  1      OPC=nop               
  nop                         #  63    0x111467  1      OPC=nop               
  callq .__errno              #  64    0x111468  5      OPC=callq_label       
  movl %eax, %eax             #  65    0x11146d  2      OPC=movl_r32_r32      
  movl %eax, %eax             #  66    0x11146f  2      OPC=movl_r32_r32      
  movl %ebx, (%r15,%rax,1)    #  67    0x111471  4      OPC=movl_m32_r32      
  addl $0x10, %esp            #  68    0x111475  3      OPC=addl_r32_imm8     
  addq %r15, %rsp             #  69    0x111478  3      OPC=addq_r64_r64      
  movl $0xffffffff, %eax      #  70    0x11147b  6      OPC=movl_r32_imm32_1  
  popq %rbx                   #  71    0x111481  1      OPC=popq_r64_1        
  popq %r11                   #  72    0x111482  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  73    0x111484  7      OPC=andl_r32_imm32    
  nop                         #  74    0x11148b  1      OPC=nop               
  nop                         #  75    0x11148c  1      OPC=nop               
  nop                         #  76    0x11148d  1      OPC=nop               
  nop                         #  77    0x11148e  1      OPC=nop               
  addq %r15, %r11             #  78    0x11148f  3      OPC=addq_r64_r64      
  jmpq %r11                   #  79    0x111492  3      OPC=jmpq_r64          
                                                                              
.size clock, .-clock

