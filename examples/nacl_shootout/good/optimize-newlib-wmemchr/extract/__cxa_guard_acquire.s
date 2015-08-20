  .text
  .globl __cxa_guard_acquire
  .type __cxa_guard_acquire, @function

#! file-offset 0x1221e0
#! rip-offset  0xe21e0
#! capacity    192 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.__cxa_guard_acquire:              #        0xe21e0  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe21e0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                  #  2     0xe21e2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe21e5  3      OPC=addq_r64_r64    
  movl %edi, %edi                  #  4     0xe21e8  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %edx       #  5     0xe21ea  5      OPC=movzbl_r32_m8   
  xorl %eax, %eax                  #  6     0xe21ef  2      OPC=xorl_r32_r32    
  testb %dl, %dl                   #  7     0xe21f1  2      OPC=testb_r8_r8     
  je .L_e2220                      #  8     0xe21f3  2      OPC=je_label        
  nop                              #  9     0xe21f5  1      OPC=nop             
  nop                              #  10    0xe21f6  1      OPC=nop             
  nop                              #  11    0xe21f7  1      OPC=nop             
  nop                              #  12    0xe21f8  1      OPC=nop             
  nop                              #  13    0xe21f9  1      OPC=nop             
  nop                              #  14    0xe21fa  1      OPC=nop             
  nop                              #  15    0xe21fb  1      OPC=nop             
  nop                              #  16    0xe21fc  1      OPC=nop             
  nop                              #  17    0xe21fd  1      OPC=nop             
  nop                              #  18    0xe21fe  1      OPC=nop             
  nop                              #  19    0xe21ff  1      OPC=nop             
.L_e2200:                          #        0xe2200  0      OPC=<label>         
  addl $0x8, %esp                  #  20    0xe2200  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  21    0xe2203  3      OPC=addq_r64_r64    
  popq %r11                        #  22    0xe2206  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  23    0xe2208  7      OPC=andl_r32_imm32  
  nop                              #  24    0xe220f  1      OPC=nop             
  nop                              #  25    0xe2210  1      OPC=nop             
  nop                              #  26    0xe2211  1      OPC=nop             
  nop                              #  27    0xe2212  1      OPC=nop             
  addq %r15, %r11                  #  28    0xe2213  3      OPC=addq_r64_r64    
  jmpq %r11                        #  29    0xe2216  3      OPC=jmpq_r64        
  nop                              #  30    0xe2219  1      OPC=nop             
  nop                              #  31    0xe221a  1      OPC=nop             
  nop                              #  32    0xe221b  1      OPC=nop             
  nop                              #  33    0xe221c  1      OPC=nop             
  nop                              #  34    0xe221d  1      OPC=nop             
  nop                              #  35    0xe221e  1      OPC=nop             
  nop                              #  36    0xe221f  1      OPC=nop             
  nop                              #  37    0xe2220  1      OPC=nop             
  nop                              #  38    0xe2221  1      OPC=nop             
  nop                              #  39    0xe2222  1      OPC=nop             
  nop                              #  40    0xe2223  1      OPC=nop             
  nop                              #  41    0xe2224  1      OPC=nop             
  nop                              #  42    0xe2225  1      OPC=nop             
  nop                              #  43    0xe2226  1      OPC=nop             
.L_e2220:                          #        0xe2227  0      OPC=<label>         
  movl %edi, %edi                  #  44    0xe2227  2      OPC=movl_r32_r32    
  cmpb $0x0, (%r15,%rdi,1)         #  45    0xe2229  5      OPC=cmpb_m8_imm8    
  jne .L_e2200                     #  46    0xe222e  2      OPC=jne_label       
  addl $0x1, %edi                  #  47    0xe2230  3      OPC=addl_r32_imm8   
  movl %edi, %edi                  #  48    0xe2233  2      OPC=movl_r32_r32    
  cmpb $0x0, (%r15,%rdi,1)         #  49    0xe2235  5      OPC=cmpb_m8_imm8    
  jne .L_e2260                     #  50    0xe223a  2      OPC=jne_label       
  movl %edi, %edi                  #  51    0xe223c  2      OPC=movl_r32_r32    
  movb $0x1, (%r15,%rdi,1)         #  52    0xe223e  5      OPC=movb_m8_imm8    
  nop                              #  53    0xe2243  1      OPC=nop             
  nop                              #  54    0xe2244  1      OPC=nop             
  nop                              #  55    0xe2245  1      OPC=nop             
  nop                              #  56    0xe2246  1      OPC=nop             
  addl $0x8, %esp                  #  57    0xe2247  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  58    0xe224a  3      OPC=addq_r64_r64    
  movl $0x1, %eax                  #  59    0xe224d  5      OPC=movl_r32_imm32  
  popq %r11                        #  60    0xe2252  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  61    0xe2254  7      OPC=andl_r32_imm32  
  nop                              #  62    0xe225b  1      OPC=nop             
  nop                              #  63    0xe225c  1      OPC=nop             
  nop                              #  64    0xe225d  1      OPC=nop             
  nop                              #  65    0xe225e  1      OPC=nop             
  addq %r15, %r11                  #  66    0xe225f  3      OPC=addq_r64_r64    
  jmpq %r11                        #  67    0xe2262  3      OPC=jmpq_r64        
  nop                              #  68    0xe2265  1      OPC=nop             
  nop                              #  69    0xe2266  1      OPC=nop             
  nop                              #  70    0xe2267  1      OPC=nop             
  nop                              #  71    0xe2268  1      OPC=nop             
  nop                              #  72    0xe2269  1      OPC=nop             
  nop                              #  73    0xe226a  1      OPC=nop             
  nop                              #  74    0xe226b  1      OPC=nop             
  nop                              #  75    0xe226c  1      OPC=nop             
  nop                              #  76    0xe226d  1      OPC=nop             
.L_e2260:                          #        0xe226e  0      OPC=<label>         
  movl $0x4, %edi                  #  77    0xe226e  5      OPC=movl_r32_imm32  
  nop                              #  78    0xe2273  1      OPC=nop             
  nop                              #  79    0xe2274  1      OPC=nop             
  nop                              #  80    0xe2275  1      OPC=nop             
  nop                              #  81    0xe2276  1      OPC=nop             
  nop                              #  82    0xe2277  1      OPC=nop             
  nop                              #  83    0xe2278  1      OPC=nop             
  nop                              #  84    0xe2279  1      OPC=nop             
  nop                              #  85    0xe227a  1      OPC=nop             
  nop                              #  86    0xe227b  1      OPC=nop             
  nop                              #  87    0xe227c  1      OPC=nop             
  nop                              #  88    0xe227d  1      OPC=nop             
  nop                              #  89    0xe227e  1      OPC=nop             
  nop                              #  90    0xe227f  1      OPC=nop             
  nop                              #  91    0xe2280  1      OPC=nop             
  nop                              #  92    0xe2281  1      OPC=nop             
  nop                              #  93    0xe2282  1      OPC=nop             
  nop                              #  94    0xe2283  1      OPC=nop             
  nop                              #  95    0xe2284  1      OPC=nop             
  nop                              #  96    0xe2285  1      OPC=nop             
  nop                              #  97    0xe2286  1      OPC=nop             
  nop                              #  98    0xe2287  1      OPC=nop             
  nop                              #  99    0xe2288  1      OPC=nop             
  callq .__cxa_allocate_exception  #  100   0xe2289  5      OPC=callq_label     
  movl %eax, %edi                  #  101   0xe228e  2      OPC=movl_r32_r32    
  movl $0xe22a0, %edx              #  102   0xe2290  5      OPC=movl_r32_imm32  
  movl $0x1003d1c4, %esi           #  103   0xe2295  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  104   0xe229a  2      OPC=movl_r32_r32    
  movl $0x1003d188, (%r15,%rdi,1)  #  105   0xe229c  8      OPC=movl_m32_imm32  
  nop                              #  106   0xe22a4  1      OPC=nop             
  nop                              #  107   0xe22a5  1      OPC=nop             
  nop                              #  108   0xe22a6  1      OPC=nop             
  nop                              #  109   0xe22a7  1      OPC=nop             
  nop                              #  110   0xe22a8  1      OPC=nop             
  callq .__cxa_throw               #  111   0xe22a9  5      OPC=callq_label     
                                                                                
.size __cxa_guard_acquire, .-__cxa_guard_acquire

