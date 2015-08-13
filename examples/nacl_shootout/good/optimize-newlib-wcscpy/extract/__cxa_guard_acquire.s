  .text
  .globl __cxa_guard_acquire
  .type __cxa_guard_acquire, @function

#! file-offset 0x121ee0
#! rip-offset  0xe1ee0
#! capacity    192 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.__cxa_guard_acquire:              #        0xe1ee0  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe1ee0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                  #  2     0xe1ee2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe1ee5  3      OPC=addq_r64_r64    
  movl %edi, %edi                  #  4     0xe1ee8  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %edx       #  5     0xe1eea  5      OPC=movzbl_r32_m8   
  xorl %eax, %eax                  #  6     0xe1eef  2      OPC=xorl_r32_r32    
  testb %dl, %dl                   #  7     0xe1ef1  2      OPC=testb_r8_r8     
  je .L_e1f20                      #  8     0xe1ef3  2      OPC=je_label        
  nop                              #  9     0xe1ef5  1      OPC=nop             
  nop                              #  10    0xe1ef6  1      OPC=nop             
  nop                              #  11    0xe1ef7  1      OPC=nop             
  nop                              #  12    0xe1ef8  1      OPC=nop             
  nop                              #  13    0xe1ef9  1      OPC=nop             
  nop                              #  14    0xe1efa  1      OPC=nop             
  nop                              #  15    0xe1efb  1      OPC=nop             
  nop                              #  16    0xe1efc  1      OPC=nop             
  nop                              #  17    0xe1efd  1      OPC=nop             
  nop                              #  18    0xe1efe  1      OPC=nop             
  nop                              #  19    0xe1eff  1      OPC=nop             
.L_e1f00:                          #        0xe1f00  0      OPC=<label>         
  addl $0x8, %esp                  #  20    0xe1f00  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  21    0xe1f03  3      OPC=addq_r64_r64    
  popq %r11                        #  22    0xe1f06  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  23    0xe1f08  7      OPC=andl_r32_imm32  
  nop                              #  24    0xe1f0f  1      OPC=nop             
  nop                              #  25    0xe1f10  1      OPC=nop             
  nop                              #  26    0xe1f11  1      OPC=nop             
  nop                              #  27    0xe1f12  1      OPC=nop             
  addq %r15, %r11                  #  28    0xe1f13  3      OPC=addq_r64_r64    
  jmpq %r11                        #  29    0xe1f16  3      OPC=jmpq_r64        
  nop                              #  30    0xe1f19  1      OPC=nop             
  nop                              #  31    0xe1f1a  1      OPC=nop             
  nop                              #  32    0xe1f1b  1      OPC=nop             
  nop                              #  33    0xe1f1c  1      OPC=nop             
  nop                              #  34    0xe1f1d  1      OPC=nop             
  nop                              #  35    0xe1f1e  1      OPC=nop             
  nop                              #  36    0xe1f1f  1      OPC=nop             
  nop                              #  37    0xe1f20  1      OPC=nop             
  nop                              #  38    0xe1f21  1      OPC=nop             
  nop                              #  39    0xe1f22  1      OPC=nop             
  nop                              #  40    0xe1f23  1      OPC=nop             
  nop                              #  41    0xe1f24  1      OPC=nop             
  nop                              #  42    0xe1f25  1      OPC=nop             
  nop                              #  43    0xe1f26  1      OPC=nop             
.L_e1f20:                          #        0xe1f27  0      OPC=<label>         
  movl %edi, %edi                  #  44    0xe1f27  2      OPC=movl_r32_r32    
  cmpb $0x0, (%r15,%rdi,1)         #  45    0xe1f29  5      OPC=cmpb_m8_imm8    
  jne .L_e1f00                     #  46    0xe1f2e  2      OPC=jne_label       
  addl $0x1, %edi                  #  47    0xe1f30  3      OPC=addl_r32_imm8   
  movl %edi, %edi                  #  48    0xe1f33  2      OPC=movl_r32_r32    
  cmpb $0x0, (%r15,%rdi,1)         #  49    0xe1f35  5      OPC=cmpb_m8_imm8    
  jne .L_e1f60                     #  50    0xe1f3a  2      OPC=jne_label       
  movl %edi, %edi                  #  51    0xe1f3c  2      OPC=movl_r32_r32    
  movb $0x1, (%r15,%rdi,1)         #  52    0xe1f3e  5      OPC=movb_m8_imm8    
  nop                              #  53    0xe1f43  1      OPC=nop             
  nop                              #  54    0xe1f44  1      OPC=nop             
  nop                              #  55    0xe1f45  1      OPC=nop             
  nop                              #  56    0xe1f46  1      OPC=nop             
  addl $0x8, %esp                  #  57    0xe1f47  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  58    0xe1f4a  3      OPC=addq_r64_r64    
  movl $0x1, %eax                  #  59    0xe1f4d  5      OPC=movl_r32_imm32  
  popq %r11                        #  60    0xe1f52  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  61    0xe1f54  7      OPC=andl_r32_imm32  
  nop                              #  62    0xe1f5b  1      OPC=nop             
  nop                              #  63    0xe1f5c  1      OPC=nop             
  nop                              #  64    0xe1f5d  1      OPC=nop             
  nop                              #  65    0xe1f5e  1      OPC=nop             
  addq %r15, %r11                  #  66    0xe1f5f  3      OPC=addq_r64_r64    
  jmpq %r11                        #  67    0xe1f62  3      OPC=jmpq_r64        
  nop                              #  68    0xe1f65  1      OPC=nop             
  nop                              #  69    0xe1f66  1      OPC=nop             
  nop                              #  70    0xe1f67  1      OPC=nop             
  nop                              #  71    0xe1f68  1      OPC=nop             
  nop                              #  72    0xe1f69  1      OPC=nop             
  nop                              #  73    0xe1f6a  1      OPC=nop             
  nop                              #  74    0xe1f6b  1      OPC=nop             
  nop                              #  75    0xe1f6c  1      OPC=nop             
  nop                              #  76    0xe1f6d  1      OPC=nop             
.L_e1f60:                          #        0xe1f6e  0      OPC=<label>         
  movl $0x4, %edi                  #  77    0xe1f6e  5      OPC=movl_r32_imm32  
  nop                              #  78    0xe1f73  1      OPC=nop             
  nop                              #  79    0xe1f74  1      OPC=nop             
  nop                              #  80    0xe1f75  1      OPC=nop             
  nop                              #  81    0xe1f76  1      OPC=nop             
  nop                              #  82    0xe1f77  1      OPC=nop             
  nop                              #  83    0xe1f78  1      OPC=nop             
  nop                              #  84    0xe1f79  1      OPC=nop             
  nop                              #  85    0xe1f7a  1      OPC=nop             
  nop                              #  86    0xe1f7b  1      OPC=nop             
  nop                              #  87    0xe1f7c  1      OPC=nop             
  nop                              #  88    0xe1f7d  1      OPC=nop             
  nop                              #  89    0xe1f7e  1      OPC=nop             
  nop                              #  90    0xe1f7f  1      OPC=nop             
  nop                              #  91    0xe1f80  1      OPC=nop             
  nop                              #  92    0xe1f81  1      OPC=nop             
  nop                              #  93    0xe1f82  1      OPC=nop             
  nop                              #  94    0xe1f83  1      OPC=nop             
  nop                              #  95    0xe1f84  1      OPC=nop             
  nop                              #  96    0xe1f85  1      OPC=nop             
  nop                              #  97    0xe1f86  1      OPC=nop             
  nop                              #  98    0xe1f87  1      OPC=nop             
  nop                              #  99    0xe1f88  1      OPC=nop             
  callq .__cxa_allocate_exception  #  100   0xe1f89  5      OPC=callq_label     
  movl %eax, %edi                  #  101   0xe1f8e  2      OPC=movl_r32_r32    
  movl $0xe1fa0, %edx              #  102   0xe1f90  5      OPC=movl_r32_imm32  
  movl $0x1003d1c4, %esi           #  103   0xe1f95  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  104   0xe1f9a  2      OPC=movl_r32_r32    
  movl $0x1003d188, (%r15,%rdi,1)  #  105   0xe1f9c  8      OPC=movl_m32_imm32  
  nop                              #  106   0xe1fa4  1      OPC=nop             
  nop                              #  107   0xe1fa5  1      OPC=nop             
  nop                              #  108   0xe1fa6  1      OPC=nop             
  nop                              #  109   0xe1fa7  1      OPC=nop             
  nop                              #  110   0xe1fa8  1      OPC=nop             
  callq .__cxa_throw               #  111   0xe1fa9  5      OPC=callq_label     
                                                                                
.size __cxa_guard_acquire, .-__cxa_guard_acquire

