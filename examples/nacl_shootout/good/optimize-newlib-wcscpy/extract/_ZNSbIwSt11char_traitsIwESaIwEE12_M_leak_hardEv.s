  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv, @function

#! file-offset 0x119ec0
#! rip-offset  0xd9ec0
#! capacity    160 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv:       #        0xd9ec0  0      OPC=<label>         
  pushq %rbx                                            #  1     0xd9ec0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                       #  2     0xd9ec1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                       #  3     0xd9ec3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                              #  4     0xd9ec5  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                       #  5     0xd9ec9  3      OPC=subl_r32_imm8   
  cmpl $0x10073620, %eax                                #  6     0xd9ecc  5      OPC=cmpl_eax_imm32  
  je .L_d9f40                                           #  7     0xd9ed1  2      OPC=je_label        
  movl %eax, %eax                                       #  8     0xd9ed3  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %r11d                          #  9     0xd9ed5  5      OPC=movl_r32_m32    
  testl %r11d, %r11d                                    #  10    0xd9eda  3      OPC=testl_r32_r32   
  nop                                                   #  11    0xd9edd  1      OPC=nop             
  nop                                                   #  12    0xd9ede  1      OPC=nop             
  nop                                                   #  13    0xd9edf  1      OPC=nop             
  jle .L_d9f20                                          #  14    0xd9ee0  2      OPC=jle_label       
  xorl %ecx, %ecx                                       #  15    0xd9ee2  2      OPC=xorl_r32_r32    
  xorl %edx, %edx                                       #  16    0xd9ee4  2      OPC=xorl_r32_r32    
  xorl %esi, %esi                                       #  17    0xd9ee6  2      OPC=xorl_r32_r32    
  movl %ebx, %edi                                       #  18    0xd9ee8  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                        #  19    0xd9eea  2      OPC=xchgw_ax_r16    
  nop                                                   #  20    0xd9eec  1      OPC=nop             
  nop                                                   #  21    0xd9eed  1      OPC=nop             
  nop                                                   #  22    0xd9eee  1      OPC=nop             
  nop                                                   #  23    0xd9eef  1      OPC=nop             
  nop                                                   #  24    0xd9ef0  1      OPC=nop             
  nop                                                   #  25    0xd9ef1  1      OPC=nop             
  nop                                                   #  26    0xd9ef2  1      OPC=nop             
  nop                                                   #  27    0xd9ef3  1      OPC=nop             
  nop                                                   #  28    0xd9ef4  1      OPC=nop             
  nop                                                   #  29    0xd9ef5  1      OPC=nop             
  nop                                                   #  30    0xd9ef6  1      OPC=nop             
  nop                                                   #  31    0xd9ef7  1      OPC=nop             
  nop                                                   #  32    0xd9ef8  1      OPC=nop             
  nop                                                   #  33    0xd9ef9  1      OPC=nop             
  nop                                                   #  34    0xd9efa  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  35    0xd9efb  5      OPC=callq_label     
  movl %ebx, %ebx                                       #  36    0xd9f00  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                              #  37    0xd9f02  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                       #  38    0xd9f06  3      OPC=subl_r32_imm8   
  nop                                                   #  39    0xd9f09  1      OPC=nop             
  nop                                                   #  40    0xd9f0a  1      OPC=nop             
  nop                                                   #  41    0xd9f0b  1      OPC=nop             
  nop                                                   #  42    0xd9f0c  1      OPC=nop             
  nop                                                   #  43    0xd9f0d  1      OPC=nop             
  nop                                                   #  44    0xd9f0e  1      OPC=nop             
  nop                                                   #  45    0xd9f0f  1      OPC=nop             
  nop                                                   #  46    0xd9f10  1      OPC=nop             
  nop                                                   #  47    0xd9f11  1      OPC=nop             
  nop                                                   #  48    0xd9f12  1      OPC=nop             
  nop                                                   #  49    0xd9f13  1      OPC=nop             
  nop                                                   #  50    0xd9f14  1      OPC=nop             
  nop                                                   #  51    0xd9f15  1      OPC=nop             
  nop                                                   #  52    0xd9f16  1      OPC=nop             
  nop                                                   #  53    0xd9f17  1      OPC=nop             
  nop                                                   #  54    0xd9f18  1      OPC=nop             
  nop                                                   #  55    0xd9f19  1      OPC=nop             
  nop                                                   #  56    0xd9f1a  1      OPC=nop             
  nop                                                   #  57    0xd9f1b  1      OPC=nop             
  nop                                                   #  58    0xd9f1c  1      OPC=nop             
  nop                                                   #  59    0xd9f1d  1      OPC=nop             
  nop                                                   #  60    0xd9f1e  1      OPC=nop             
  nop                                                   #  61    0xd9f1f  1      OPC=nop             
.L_d9f20:                                               #        0xd9f20  0      OPC=<label>         
  movl %eax, %eax                                       #  62    0xd9f20  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rax,1)                    #  63    0xd9f22  9      OPC=movl_m32_imm32  
  nop                                                   #  64    0xd9f2b  1      OPC=nop             
  nop                                                   #  65    0xd9f2c  1      OPC=nop             
  nop                                                   #  66    0xd9f2d  1      OPC=nop             
  nop                                                   #  67    0xd9f2e  1      OPC=nop             
  nop                                                   #  68    0xd9f2f  1      OPC=nop             
  nop                                                   #  69    0xd9f30  1      OPC=nop             
  nop                                                   #  70    0xd9f31  1      OPC=nop             
  nop                                                   #  71    0xd9f32  1      OPC=nop             
  nop                                                   #  72    0xd9f33  1      OPC=nop             
  nop                                                   #  73    0xd9f34  1      OPC=nop             
  nop                                                   #  74    0xd9f35  1      OPC=nop             
  nop                                                   #  75    0xd9f36  1      OPC=nop             
  nop                                                   #  76    0xd9f37  1      OPC=nop             
  nop                                                   #  77    0xd9f38  1      OPC=nop             
  nop                                                   #  78    0xd9f39  1      OPC=nop             
  nop                                                   #  79    0xd9f3a  1      OPC=nop             
  nop                                                   #  80    0xd9f3b  1      OPC=nop             
  nop                                                   #  81    0xd9f3c  1      OPC=nop             
  nop                                                   #  82    0xd9f3d  1      OPC=nop             
  nop                                                   #  83    0xd9f3e  1      OPC=nop             
  nop                                                   #  84    0xd9f3f  1      OPC=nop             
.L_d9f40:                                               #        0xd9f40  0      OPC=<label>         
  popq %rbx                                             #  85    0xd9f40  1      OPC=popq_r64_1      
  popq %r11                                             #  86    0xd9f41  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  87    0xd9f43  7      OPC=andl_r32_imm32  
  nop                                                   #  88    0xd9f4a  1      OPC=nop             
  nop                                                   #  89    0xd9f4b  1      OPC=nop             
  nop                                                   #  90    0xd9f4c  1      OPC=nop             
  nop                                                   #  91    0xd9f4d  1      OPC=nop             
  addq %r15, %r11                                       #  92    0xd9f4e  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  93    0xd9f51  3      OPC=jmpq_r64        
  nop                                                   #  94    0xd9f54  1      OPC=nop             
  nop                                                   #  95    0xd9f55  1      OPC=nop             
  nop                                                   #  96    0xd9f56  1      OPC=nop             
  nop                                                   #  97    0xd9f57  1      OPC=nop             
  nop                                                   #  98    0xd9f58  1      OPC=nop             
  nop                                                   #  99    0xd9f59  1      OPC=nop             
  nop                                                   #  100   0xd9f5a  1      OPC=nop             
  nop                                                   #  101   0xd9f5b  1      OPC=nop             
  nop                                                   #  102   0xd9f5c  1      OPC=nop             
  nop                                                   #  103   0xd9f5d  1      OPC=nop             
  nop                                                   #  104   0xd9f5e  1      OPC=nop             
  nop                                                   #  105   0xd9f5f  1      OPC=nop             
  nop                                                   #  106   0xd9f60  1      OPC=nop             
  nop                                                   #  107   0xd9f61  1      OPC=nop             
  nop                                                   #  108   0xd9f62  1      OPC=nop             
  nop                                                   #  109   0xd9f63  1      OPC=nop             
  nop                                                   #  110   0xd9f64  1      OPC=nop             
  nop                                                   #  111   0xd9f65  1      OPC=nop             
  nop                                                   #  112   0xd9f66  1      OPC=nop             
                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv, .-_ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv

