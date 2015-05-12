  .text
  .globl d_exprlist
  .type d_exprlist, @function

#! file-offset 0x543e0
#! rip-offset  0x543e0
#! capacity    384 bytes

# Text                         #  Line  RIP      Bytes  
.d_exprlist:                   #        0x543e0  0      
  pushq %r12                   #  1     0x543e0  3      
  pushq %rbx                   #  2     0x543e3  2      
  movl %edi, %ebx              #  3     0x543e5  2      
  subl $0x18, %esp             #  4     0x543e7  3      
  addq %r15, %rsp              #  5     0x543ea  3      
  movl %ebx, %ebx              #  6     0x543ed  2      
  movl 0xc(%r15,%rbx,1), %eax  #  7     0x543ef  5      
  movl $0x0, 0xc(%rsp)         #  8     0x543f4  8      
  nop                          #  9     0x543fc  1      
  movl %eax, %eax              #  10    0x543fd  2      
  cmpb $0x45, (%r15,%rax,1)    #  11    0x543ff  5      
  jne .L_54460                 #  12    0x54404  6      
  addl $0x1, %eax              #  13    0x5440a  3      
  movl %ebx, %edi              #  14    0x5440d  2      
  xorl %ecx, %ecx              #  15    0x5440f  2      
  movl %ebx, %ebx              #  16    0x54411  2      
  movl %eax, 0xc(%r15,%rbx,1)  #  17    0x54413  5      
  xorl %edx, %edx              #  18    0x54418  2      
  movl $0x29, %esi             #  19    0x5441a  5      
  xchgw %ax, %ax               #  20    0x5441f  3      
  nop                          #  21    0x54422  1      
  nop                          #  22    0x54423  1      
  callq .d_make_comp           #  23    0x54424  5      
  addl $0x18, %esp             #  24    0x54429  3      
  addq %r15, %rsp              #  25    0x5442c  3      
  movl %eax, %eax              #  26    0x5442f  2      
  popq %rbx                    #  27    0x54431  2      
  popq %r12                    #  28    0x54433  3      
  popq %r11                    #  29    0x54436  3      
  andl $0xffffffe0, %r11d      #  30    0x54439  7      
  addq %r15, %r11              #  31    0x54440  3      
  jmpq %r11                    #  32    0x54443  3      
  nop                          #  33    0x54446  1      
.L_54460:                      #        0x54447  0      
  leal 0xc(%rsp), %r12d        #  34    0x54447  5      
  jmpq .L_544a0                #  35    0x5444c  5      
  nop                          #  36    0x54451  1      
  nop                          #  37    0x54452  1      
.L_54480:                      #        0x54453  0      
  leal 0x8(%rax), %r12d        #  38    0x54453  4      
  nop                          #  39    0x54457  1      
  nop                          #  40    0x54458  1      
.L_544a0:                      #        0x54459  0      
  movl %ebx, %edi              #  41    0x54459  2      
  nop                          #  42    0x5445b  1      
  nop                          #  43    0x5445c  1      
  callq .d_expression          #  44    0x5445d  5      
  movl %eax, %edx              #  45    0x54462  2      
  testq %rdx, %rdx             #  46    0x54464  3      
  je .L_54540                  #  47    0x54467  6      
  xorl %ecx, %ecx              #  48    0x5446d  2      
  movl $0x29, %esi             #  49    0x5446f  5      
  movl %ebx, %edi              #  50    0x54474  2      
  nop                          #  51    0x54476  1      
  callq .d_make_comp           #  52    0x54477  5      
  movl %eax, %eax              #  53    0x5447c  2      
  testq %rax, %rax             #  54    0x5447e  3      
  movl %r12d, %r12d            #  55    0x54481  3      
  movl %eax, (%r15,%r12,1)     #  56    0x54484  4      
  je .L_54540                  #  57    0x54488  6      
  movl %ebx, %ebx              #  58    0x5448e  2      
  movl 0xc(%r15,%rbx,1), %edx  #  59    0x54490  5      
  movl %edx, %edx              #  60    0x54495  2      
  cmpb $0x45, (%r15,%rdx,1)    #  61    0x54497  5      
  nop                          #  62    0x5449c  1      
  jne .L_54480                 #  63    0x5449d  6      
  addl $0x1, %edx              #  64    0x544a3  3      
  movl 0xc(%rsp), %eax         #  65    0x544a6  4      
  movl %ebx, %ebx              #  66    0x544aa  2      
  movl %edx, 0xc(%r15,%rbx,1)  #  67    0x544ac  5      
  addl $0x18, %esp             #  68    0x544b1  3      
  addq %r15, %rsp              #  69    0x544b4  3      
  popq %rbx                    #  70    0x544b7  2      
  popq %r12                    #  71    0x544b9  3      
  popq %r11                    #  72    0x544bc  3      
  nop                          #  73    0x544bf  1      
  andl $0xffffffe0, %r11d      #  74    0x544c0  7      
  addq %r15, %r11              #  75    0x544c7  3      
  jmpq %r11                    #  76    0x544ca  3      
  nop                          #  77    0x544cd  1      
  nop                          #  78    0x544ce  1      
.L_54540:                      #        0x544cf  0      
  addl $0x18, %esp             #  79    0x544cf  3      
  addq %r15, %rsp              #  80    0x544d2  3      
  xorl %eax, %eax              #  81    0x544d5  2      
  popq %rbx                    #  82    0x544d7  2      
  popq %r12                    #  83    0x544d9  3      
  popq %r11                    #  84    0x544dc  3      
  andl $0xffffffe0, %r11d      #  85    0x544df  7      
  addq %r15, %r11              #  86    0x544e6  3      
  jmpq %r11                    #  87    0x544e9  3      
  nop                          #  88    0x544ec  1      
                                                        
.size d_exprlist, .-d_exprlist

