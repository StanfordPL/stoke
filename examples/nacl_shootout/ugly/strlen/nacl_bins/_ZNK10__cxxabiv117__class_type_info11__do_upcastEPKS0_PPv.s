  .text
  .globl _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv
  .type _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv, @function

#! file-offset 0x1221c0
#! rip-offset  0xe21c0
#! capacity    160 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode    
._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv:  #        0xe21c0  0      OPC=0     
  pushq %rbx                                                 #  1     0xe21c0  1      OPC=1861  
  movl %edi, %edi                                            #  2     0xe21c1  2      OPC=1157  
  movl %edx, %ebx                                            #  3     0xe21c3  2      OPC=1157  
  movl %esi, %esi                                            #  4     0xe21c5  2      OPC=1157  
  subl $0x10, %esp                                           #  5     0xe21c7  3      OPC=2384  
  addq %r15, %rsp                                            #  6     0xe21ca  3      OPC=72    
  movl %edi, %edi                                            #  7     0xe21cd  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                   #  8     0xe21cf  4      OPC=1156  
  movl %ebx, %ebx                                            #  9     0xe21d3  2      OPC=1157  
  movl (%r15,%rbx,1), %edx                                   #  10    0xe21d5  4      OPC=1156  
  movl $0x0, (%rsp)                                          #  11    0xe21d9  7      OPC=1135  
  movl $0x0, 0x4(%rsp)                                       #  12    0xe21e0  8      OPC=1135  
  movl %esp, %ecx                                            #  13    0xe21e8  2      OPC=1157  
  movl $0x10, 0x8(%rsp)                                      #  14    0xe21ea  8      OPC=1135  
  movl $0x0, 0xc(%rsp)                                       #  15    0xe21f2  8      OPC=1135  
  nop                                                        #  16    0xe21fa  1      OPC=1343  
  nop                                                        #  17    0xe21fb  1      OPC=1343  
  nop                                                        #  18    0xe21fc  1      OPC=1343  
  nop                                                        #  19    0xe21fd  1      OPC=1343  
  nop                                                        #  20    0xe21fe  1      OPC=1343  
  nop                                                        #  21    0xe21ff  1      OPC=1343  
  movl %eax, %eax                                            #  22    0xe2200  2      OPC=1157  
  movl 0x18(%r15,%rax,1), %eax                               #  23    0xe2202  5      OPC=1156  
  xchgw %ax, %ax                                             #  24    0xe2207  2      OPC=3700  
  nop                                                        #  25    0xe2209  1      OPC=1343  
  nop                                                        #  26    0xe220a  1      OPC=1343  
  nop                                                        #  27    0xe220b  1      OPC=1343  
  nop                                                        #  28    0xe220c  1      OPC=1343  
  nop                                                        #  29    0xe220d  1      OPC=1343  
  nop                                                        #  30    0xe220e  1      OPC=1343  
  nop                                                        #  31    0xe220f  1      OPC=1343  
  nop                                                        #  32    0xe2210  1      OPC=1343  
  nop                                                        #  33    0xe2211  1      OPC=1343  
  nop                                                        #  34    0xe2212  1      OPC=1343  
  nop                                                        #  35    0xe2213  1      OPC=1343  
  nop                                                        #  36    0xe2214  1      OPC=1343  
  nop                                                        #  37    0xe2215  1      OPC=1343  
  nop                                                        #  38    0xe2216  1      OPC=1343  
  nop                                                        #  39    0xe2217  1      OPC=1343  
  andl $0xffffffe0, %eax                                     #  40    0xe2218  6      OPC=131   
  nop                                                        #  41    0xe221e  1      OPC=1343  
  nop                                                        #  42    0xe221f  1      OPC=1343  
  nop                                                        #  43    0xe2220  1      OPC=1343  
  addq %r15, %rax                                            #  44    0xe2221  3      OPC=72    
  callq %rax                                                 #  45    0xe2224  2      OPC=258   
  movl 0x4(%rsp), %edx                                       #  46    0xe2226  4      OPC=1156  
  xorl %eax, %eax                                            #  47    0xe222a  2      OPC=3758  
  andl $0x6, %edx                                            #  48    0xe222c  3      OPC=132   
  cmpl $0x6, %edx                                            #  49    0xe222f  3      OPC=470   
  jne .L_e2240                                               #  50    0xe2232  6      OPC=963   
  nop                                                        #  51    0xe2238  1      OPC=1343  
  nop                                                        #  52    0xe2239  1      OPC=1343  
  movl (%rsp), %eax                                          #  53    0xe223a  3      OPC=1156  
  movl %ebx, %ebx                                            #  54    0xe223d  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                   #  55    0xe223f  4      OPC=1136  
  movl $0x1, %eax                                            #  56    0xe2243  5      OPC=1154  
  nop                                                        #  57    0xe2248  1      OPC=1343  
  nop                                                        #  58    0xe2249  1      OPC=1343  
  nop                                                        #  59    0xe224a  1      OPC=1343  
  nop                                                        #  60    0xe224b  1      OPC=1343  
.L_e2240:                                                    #        0xe224c  0      OPC=0     
  addl $0x10, %esp                                           #  61    0xe224c  3      OPC=65    
  addq %r15, %rsp                                            #  62    0xe224f  3      OPC=72    
  popq %rbx                                                  #  63    0xe2252  1      OPC=1694  
  popq %r11                                                  #  64    0xe2253  2      OPC=1694  
  andl $0xffffffe0, %r11d                                    #  65    0xe2255  7      OPC=131   
  nop                                                        #  66    0xe225c  1      OPC=1343  
  nop                                                        #  67    0xe225d  1      OPC=1343  
  nop                                                        #  68    0xe225e  1      OPC=1343  
  nop                                                        #  69    0xe225f  1      OPC=1343  
  addq %r15, %r11                                            #  70    0xe2260  3      OPC=72    
  jmpq %r11                                                  #  71    0xe2263  3      OPC=928   
  nop                                                        #  72    0xe2266  1      OPC=1343  
  nop                                                        #  73    0xe2267  1      OPC=1343  
  nop                                                        #  74    0xe2268  1      OPC=1343  
  nop                                                        #  75    0xe2269  1      OPC=1343  
  nop                                                        #  76    0xe226a  1      OPC=1343  
  nop                                                        #  77    0xe226b  1      OPC=1343  
  nop                                                        #  78    0xe226c  1      OPC=1343  
  nop                                                        #  79    0xe226d  1      OPC=1343  
  nop                                                        #  80    0xe226e  1      OPC=1343  
  nop                                                        #  81    0xe226f  1      OPC=1343  
  nop                                                        #  82    0xe2270  1      OPC=1343  
  nop                                                        #  83    0xe2271  1      OPC=1343  
  nop                                                        #  84    0xe2272  1      OPC=1343  
                                                                                                
.size _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv, .-_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv

