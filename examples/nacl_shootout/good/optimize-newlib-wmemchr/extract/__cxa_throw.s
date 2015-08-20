  .text
  .globl __cxa_throw
  .type __cxa_throw, @function

#! file-offset 0x120de0
#! rip-offset  0xe0de0
#! capacity    192 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
.__cxa_throw:                       #        0xe0de0  0      OPC=<label>         
  movl 0xff8fb3e(%rip), %eax        #  1     0xe0de0  6      OPC=movl_r32_m32    
  pushq %rbx                        #  2     0xe0de6  1      OPC=pushq_r64_1     
  leal -0x60(%rdi), %ebx            #  3     0xe0de7  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                   #  4     0xe0dea  2      OPC=movl_r32_r32    
  movl %esi, 0x10(%r15,%rbx,1)      #  5     0xe0dec  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                   #  6     0xe0df1  2      OPC=movl_r32_r32    
  movl %edx, 0x14(%r15,%rbx,1)      #  7     0xe0df3  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                   #  8     0xe0df8  2      OPC=movl_r32_r32    
  movl %eax, 0x18(%r15,%rbx,1)      #  9     0xe0dfa  5      OPC=movl_m32_r32    
  nop                               #  10    0xe0dff  1      OPC=nop             
  movl 0xff8fb22(%rip), %eax        #  11    0xe0e00  6      OPC=movl_r32_m32    
  movl %ebx, %ebx                   #  12    0xe0e06  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rbx,1)          #  13    0xe0e08  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                   #  14    0xe0e10  2      OPC=movl_r32_r32    
  movl $0xe0ea0, 0x48(%r15,%rbx,1)  #  15    0xe0e12  9      OPC=movl_m32_imm32  
  nop                               #  16    0xe0e1b  1      OPC=nop             
  nop                               #  17    0xe0e1c  1      OPC=nop             
  nop                               #  18    0xe0e1d  1      OPC=nop             
  nop                               #  19    0xe0e1e  1      OPC=nop             
  nop                               #  20    0xe0e1f  1      OPC=nop             
  movl %ebx, %ebx                   #  21    0xe0e20  2      OPC=movl_r32_r32    
  movl %eax, 0x1c(%r15,%rbx,1)      #  22    0xe0e22  5      OPC=movl_m32_r32    
  movq $0x474e5543432b2b00, %rax    #  23    0xe0e27  10     OPC=movq_r64_imm64  
  movl %ebx, %ebx                   #  24    0xe0e31  2      OPC=movl_r32_r32    
  movq %rax, 0x40(%r15,%rbx,1)      #  25    0xe0e33  5      OPC=movq_m64_r64    
  addl $0x40, %ebx                  #  26    0xe0e38  3      OPC=addl_r32_imm8   
  movl %ebx, %edi                   #  27    0xe0e3b  2      OPC=movl_r32_r32    
  nop                               #  28    0xe0e3d  1      OPC=nop             
  nop                               #  29    0xe0e3e  1      OPC=nop             
  nop                               #  30    0xe0e3f  1      OPC=nop             
  nop                               #  31    0xe0e40  1      OPC=nop             
  nop                               #  32    0xe0e41  1      OPC=nop             
  nop                               #  33    0xe0e42  1      OPC=nop             
  nop                               #  34    0xe0e43  1      OPC=nop             
  nop                               #  35    0xe0e44  1      OPC=nop             
  nop                               #  36    0xe0e45  1      OPC=nop             
  nop                               #  37    0xe0e46  1      OPC=nop             
  nop                               #  38    0xe0e47  1      OPC=nop             
  nop                               #  39    0xe0e48  1      OPC=nop             
  nop                               #  40    0xe0e49  1      OPC=nop             
  nop                               #  41    0xe0e4a  1      OPC=nop             
  nop                               #  42    0xe0e4b  1      OPC=nop             
  nop                               #  43    0xe0e4c  1      OPC=nop             
  nop                               #  44    0xe0e4d  1      OPC=nop             
  nop                               #  45    0xe0e4e  1      OPC=nop             
  nop                               #  46    0xe0e4f  1      OPC=nop             
  nop                               #  47    0xe0e50  1      OPC=nop             
  nop                               #  48    0xe0e51  1      OPC=nop             
  nop                               #  49    0xe0e52  1      OPC=nop             
  nop                               #  50    0xe0e53  1      OPC=nop             
  nop                               #  51    0xe0e54  1      OPC=nop             
  nop                               #  52    0xe0e55  1      OPC=nop             
  nop                               #  53    0xe0e56  1      OPC=nop             
  nop                               #  54    0xe0e57  1      OPC=nop             
  nop                               #  55    0xe0e58  1      OPC=nop             
  nop                               #  56    0xe0e59  1      OPC=nop             
  nop                               #  57    0xe0e5a  1      OPC=nop             
  callq ._Unwind_RaiseException     #  58    0xe0e5b  5      OPC=callq_label     
  movl %ebx, %edi                   #  59    0xe0e60  2      OPC=movl_r32_r32    
  nop                               #  60    0xe0e62  1      OPC=nop             
  nop                               #  61    0xe0e63  1      OPC=nop             
  nop                               #  62    0xe0e64  1      OPC=nop             
  nop                               #  63    0xe0e65  1      OPC=nop             
  nop                               #  64    0xe0e66  1      OPC=nop             
  nop                               #  65    0xe0e67  1      OPC=nop             
  nop                               #  66    0xe0e68  1      OPC=nop             
  nop                               #  67    0xe0e69  1      OPC=nop             
  nop                               #  68    0xe0e6a  1      OPC=nop             
  nop                               #  69    0xe0e6b  1      OPC=nop             
  nop                               #  70    0xe0e6c  1      OPC=nop             
  nop                               #  71    0xe0e6d  1      OPC=nop             
  nop                               #  72    0xe0e6e  1      OPC=nop             
  nop                               #  73    0xe0e6f  1      OPC=nop             
  nop                               #  74    0xe0e70  1      OPC=nop             
  nop                               #  75    0xe0e71  1      OPC=nop             
  nop                               #  76    0xe0e72  1      OPC=nop             
  nop                               #  77    0xe0e73  1      OPC=nop             
  nop                               #  78    0xe0e74  1      OPC=nop             
  nop                               #  79    0xe0e75  1      OPC=nop             
  nop                               #  80    0xe0e76  1      OPC=nop             
  nop                               #  81    0xe0e77  1      OPC=nop             
  nop                               #  82    0xe0e78  1      OPC=nop             
  nop                               #  83    0xe0e79  1      OPC=nop             
  nop                               #  84    0xe0e7a  1      OPC=nop             
  callq .__cxa_begin_catch          #  85    0xe0e7b  5      OPC=callq_label     
  nop                               #  86    0xe0e80  1      OPC=nop             
  nop                               #  87    0xe0e81  1      OPC=nop             
  nop                               #  88    0xe0e82  1      OPC=nop             
  nop                               #  89    0xe0e83  1      OPC=nop             
  nop                               #  90    0xe0e84  1      OPC=nop             
  nop                               #  91    0xe0e85  1      OPC=nop             
  nop                               #  92    0xe0e86  1      OPC=nop             
  nop                               #  93    0xe0e87  1      OPC=nop             
  nop                               #  94    0xe0e88  1      OPC=nop             
  nop                               #  95    0xe0e89  1      OPC=nop             
  nop                               #  96    0xe0e8a  1      OPC=nop             
  nop                               #  97    0xe0e8b  1      OPC=nop             
  nop                               #  98    0xe0e8c  1      OPC=nop             
  nop                               #  99    0xe0e8d  1      OPC=nop             
  nop                               #  100   0xe0e8e  1      OPC=nop             
  nop                               #  101   0xe0e8f  1      OPC=nop             
  nop                               #  102   0xe0e90  1      OPC=nop             
  nop                               #  103   0xe0e91  1      OPC=nop             
  nop                               #  104   0xe0e92  1      OPC=nop             
  nop                               #  105   0xe0e93  1      OPC=nop             
  nop                               #  106   0xe0e94  1      OPC=nop             
  nop                               #  107   0xe0e95  1      OPC=nop             
  nop                               #  108   0xe0e96  1      OPC=nop             
  nop                               #  109   0xe0e97  1      OPC=nop             
  nop                               #  110   0xe0e98  1      OPC=nop             
  nop                               #  111   0xe0e99  1      OPC=nop             
  nop                               #  112   0xe0e9a  1      OPC=nop             
  callq ._ZSt9terminatev            #  113   0xe0e9b  5      OPC=callq_label     
                                                                                 
.size __cxa_throw, .-__cxa_throw

