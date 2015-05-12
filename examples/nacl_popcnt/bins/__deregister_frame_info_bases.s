  .text
  .globl __deregister_frame_info_bases
  .type __deregister_frame_info_bases, @function

#! file-offset 0x601e0
#! rip-offset  0x601e0
#! capacity    512 bytes

# Text                           #  Line  RIP      Bytes  
.__deregister_frame_info_bases:  #        0x601e0  0      
  movl %edi, %edi                #  1     0x601e0  2      
  pushq %rbx                     #  2     0x601e2  2      
  testq %rdi, %rdi               #  3     0x601e4  3      
  jne .L_60220                   #  4     0x601e7  6      
  nop                            #  5     0x601ed  1      
  nop                            #  6     0x601ee  1      
.L_60200:                        #        0x601ef  0      
  popq %rbx                      #  7     0x601ef  2      
  popq %r11                      #  8     0x601f1  3      
  xorl %eax, %eax                #  9     0x601f4  2      
  andl $0xffffffe0, %r11d        #  10    0x601f6  7      
  addq %r15, %r11                #  11    0x601fd  3      
  jmpq %r11                      #  12    0x60200  3      
  xchgw %ax, %ax                 #  13    0x60203  3      
  nop                            #  14    0x60206  1      
.L_60220:                        #        0x60207  0      
  movl %edi, %edi                #  15    0x60207  2      
  movl (%r15,%rdi,1), %r10d      #  16    0x60209  4      
  testl %r10d, %r10d             #  17    0x6020d  3      
  je .L_60200                    #  18    0x60210  6      
  movl 0xffd663c(%rip), %ebx     #  19    0x60216  6      
  testq %rbx, %rbx               #  20    0x6021c  3      
  je .L_602a0                    #  21    0x6021f  6      
  movl %ebx, %ebx                #  22    0x60225  2      
  cmpl %edi, 0xc(%r15,%rbx,1)    #  23    0x60227  5      
  nop                            #  24    0x6022c  1      
  leal 0xffd6612(%rip), %eax     #  25    0x6022d  6      
  jne .L_60280                   #  26    0x60233  6      
  jmpq .L_60340                  #  27    0x60239  5      
  nop                            #  28    0x6023e  1      
  nop                            #  29    0x6023f  1      
.L_60260:                        #        0x60240  0      
  movl %ebx, %ebx                #  30    0x60240  2      
  cmpl %edi, 0xc(%r15,%rbx,1)    #  31    0x60242  5      
  je .L_60340                    #  32    0x60247  6      
  nop                            #  33    0x6024d  1      
  nop                            #  34    0x6024e  1      
.L_60280:                        #        0x6024f  0      
  leal 0x14(%rbx), %eax          #  35    0x6024f  3      
  movl %ebx, %ebx                #  36    0x60252  2      
  movl 0x14(%r15,%rbx,1), %ebx   #  37    0x60254  5      
  testq %rbx, %rbx               #  38    0x60259  3      
  jne .L_60260                   #  39    0x6025c  6      
  xchgw %ax, %ax                 #  40    0x60262  3      
  nop                            #  41    0x60265  1      
.L_602a0:                        #        0x60266  0      
  movl 0xffd65f0(%rip), %ebx     #  42    0x60266  6      
  testq %rbx, %rbx               #  43    0x6026c  3      
  je .L_603c0                    #  44    0x6026f  6      
  leal 0xffd65a7(%rip), %edx     #  45    0x60275  6      
  jmpq .L_60300                  #  46    0x6027b  5      
  nop                            #  47    0x60280  1      
.L_602c0:                        #        0x60281  0      
  movl %ebx, %ebx                #  48    0x60281  2      
  movl 0xc(%r15,%rbx,1), %eax    #  49    0x60283  5      
  movl %eax, %eax                #  50    0x60288  2      
  cmpl %edi, (%r15,%rax,1)       #  51    0x6028a  4      
  je .L_60380                    #  52    0x6028e  6      
  nop                            #  53    0x60294  1      
.L_602e0:                        #        0x60295  0      
  movl %ebx, %ebx                #  54    0x60295  2      
  movl 0x14(%r15,%rbx,1), %eax   #  55    0x60297  5      
  testq %rax, %rax               #  56    0x6029c  3      
  je .L_603c0                    #  57    0x6029f  6      
  leal 0x14(%rbx), %edx          #  58    0x602a5  3      
  movq %rax, %rbx                #  59    0x602a8  3      
  nop                            #  60    0x602ab  1      
.L_60300:                        #        0x602ac  0      
  movl %ebx, %ebx                #  61    0x602ac  2      
  testb $0x1, 0x10(%r15,%rbx,1)  #  62    0x602ae  6      
  jne .L_602c0                   #  63    0x602b4  6      
  movl %ebx, %ebx                #  64    0x602ba  2      
  cmpl %edi, 0xc(%r15,%rbx,1)    #  65    0x602bc  5      
  jne .L_602e0                   #  66    0x602c1  6      
  movl %ebx, %ebx                #  67    0x602c7  2      
  movl 0x14(%r15,%rbx,1), %eax   #  68    0x602c9  5      
  movl %edx, %edx                #  69    0x602ce  2      
  movl %eax, (%r15,%rdx,1)       #  70    0x602d0  4      
  jmpq .L_60360                  #  71    0x602d4  5      
  nop                            #  72    0x602d9  1      
  nop                            #  73    0x602da  1      
.L_60340:                        #        0x602db  0      
  movl %ebx, %ebx                #  74    0x602db  2      
  movl 0x14(%r15,%rbx,1), %edx   #  75    0x602dd  5      
  movl %eax, %eax                #  76    0x602e2  2      
  movl %edx, (%r15,%rax,1)       #  77    0x602e4  4      
  nop                            #  78    0x602e8  1      
  nop                            #  79    0x602e9  1      
.L_60360:                        #        0x602ea  0      
  movq %rbx, %rax                #  80    0x602ea  3      
  popq %rbx                      #  81    0x602ed  2      
  popq %r11                      #  82    0x602ef  3      
  andl $0xffffffe0, %r11d        #  83    0x602f2  7      
  addq %r15, %r11                #  84    0x602f9  3      
  jmpq %r11                      #  85    0x602fc  3      
  nop                            #  86    0x602ff  1      
  nop                            #  87    0x60300  1      
.L_60380:                        #        0x60301  0      
  movl %ebx, %ebx                #  88    0x60301  2      
  movl 0x14(%r15,%rbx,1), %eax   #  89    0x60303  5      
  movl %edx, %edx                #  90    0x60308  2      
  movl %eax, (%r15,%rdx,1)       #  91    0x6030a  4      
  movl %ebx, %ebx                #  92    0x6030e  2      
  movl 0xc(%r15,%rbx,1), %edi    #  93    0x60310  5      
  nop                            #  94    0x60315  1      
  callq .free                    #  95    0x60316  5      
  jmpq .L_60360                  #  96    0x6031b  5      
  nop                            #  97    0x60320  1      
  nop                            #  98    0x60321  1      
.L_603c0:                        #        0x60322  0      
  nop                            #  99    0x60322  1      
  nop                            #  100   0x60323  1      
  callq .abort                   #  101   0x60324  5      
                                                          
.size __deregister_frame_info_bases, .-__deregister_frame_info_bases

