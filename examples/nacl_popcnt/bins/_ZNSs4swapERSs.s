  .text
  .globl _ZNSs4swapERSs
  .type _ZNSs4swapERSs, @function

#! file-offset 0x44580
#! rip-offset  0x44580
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
._ZNSs4swapERSs:               #        0x44580  0      
  movl %edi, %edi              #  1     0x44580  2      
  movl %esi, %esi              #  2     0x44582  2      
  movl %edi, %edi              #  3     0x44584  2      
  movl (%r15,%rdi,1), %eax     #  4     0x44586  4      
  subl $0xc, %eax              #  5     0x4458a  3      
  movl %eax, %eax              #  6     0x4458d  2      
  movl 0x8(%r15,%rax,1), %r8d  #  7     0x4458f  5      
  testl %r8d, %r8d             #  8     0x44594  3      
  js .L_445e0                  #  9     0x44597  6      
  nop                          #  10    0x4459d  1      
.L_445a0:                      #        0x4459e  0      
  movl %esi, %esi              #  11    0x4459e  2      
  movl (%r15,%rsi,1), %eax     #  12    0x445a0  4      
  leal -0xc(%rax), %edx        #  13    0x445a4  3      
  movl %edx, %edx              #  14    0x445a7  2      
  movl 0x8(%r15,%rdx,1), %ecx  #  15    0x445a9  5      
  testl %ecx, %ecx             #  16    0x445ae  2      
  jns .L_445c0                 #  17    0x445b0  6      
  movl %edx, %edx              #  18    0x445b6  2      
  movl $0x0, 0x8(%r15,%rdx,1)  #  19    0x445b8  9      
  nop                          #  20    0x445c1  1      
.L_445c0:                      #        0x445c2  0      
  movl %edi, %edi              #  21    0x445c2  2      
  movl (%r15,%rdi,1), %edx     #  22    0x445c4  4      
  movl %edi, %edi              #  23    0x445c8  2      
  movl %eax, (%r15,%rdi,1)     #  24    0x445ca  4      
  popq %r11                    #  25    0x445ce  3      
  movl %esi, %esi              #  26    0x445d1  2      
  movl %edx, (%r15,%rsi,1)     #  27    0x445d3  4      
  andl $0xffffffe0, %r11d      #  28    0x445d7  7      
  addq %r15, %r11              #  29    0x445de  3      
  jmpq %r11                    #  30    0x445e1  3      
  xchgw %ax, %ax               #  31    0x445e4  3      
.L_445e0:                      #        0x445e7  0      
  movl %eax, %eax              #  32    0x445e7  2      
  movl $0x0, 0x8(%r15,%rax,1)  #  33    0x445e9  9      
  jmpq .L_445a0                #  34    0x445f2  5      
  nop                          #  35    0x445f7  1      
  nop                          #  36    0x445f8  1      
  nop                          #  37    0x445f9  1      
  nop                          #  38    0x445fa  1      
  nop                          #  39    0x445fb  1      
  nop                          #  40    0x445fc  1      
  nop                          #  41    0x445fd  1      
  nop                          #  42    0x445fe  1      
  nop                          #  43    0x445ff  1      
  nop                          #  44    0x44600  1      
  nop                          #  45    0x44601  1      
  nop                          #  46    0x44602  1      
  nop                          #  47    0x44603  1      
  nop                          #  48    0x44604  1      
  nop                          #  49    0x44605  1      
  nop                          #  50    0x44606  1      
  nop                          #  51    0x44607  1      
  nop                          #  52    0x44608  1      
  nop                          #  53    0x44609  1      
                                                        
.size _ZNSs4swapERSs, .-_ZNSs4swapERSs

