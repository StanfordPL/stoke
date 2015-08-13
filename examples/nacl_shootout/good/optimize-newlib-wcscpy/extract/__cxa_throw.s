  .text
  .globl __cxa_throw
  .type __cxa_throw, @function

#! file-offset 0x120ae0
#! rip-offset  0xe0ae0
#! capacity    192 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
.__cxa_throw:                       #        0xe0ae0  0      OPC=<label>         
  movl 0xff8fe3e(%rip), %eax        #  1     0xe0ae0  6      OPC=movl_r32_m32    
  pushq %rbx                        #  2     0xe0ae6  1      OPC=pushq_r64_1     
  leal -0x60(%rdi), %ebx            #  3     0xe0ae7  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                   #  4     0xe0aea  2      OPC=movl_r32_r32    
  movl %esi, 0x10(%r15,%rbx,1)      #  5     0xe0aec  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                   #  6     0xe0af1  2      OPC=movl_r32_r32    
  movl %edx, 0x14(%r15,%rbx,1)      #  7     0xe0af3  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                   #  8     0xe0af8  2      OPC=movl_r32_r32    
  movl %eax, 0x18(%r15,%rbx,1)      #  9     0xe0afa  5      OPC=movl_m32_r32    
  nop                               #  10    0xe0aff  1      OPC=nop             
  movl 0xff8fe22(%rip), %eax        #  11    0xe0b00  6      OPC=movl_r32_m32    
  movl %ebx, %ebx                   #  12    0xe0b06  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rbx,1)          #  13    0xe0b08  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                   #  14    0xe0b10  2      OPC=movl_r32_r32    
  movl $0xe0ba0, 0x48(%r15,%rbx,1)  #  15    0xe0b12  9      OPC=movl_m32_imm32  
  nop                               #  16    0xe0b1b  1      OPC=nop             
  nop                               #  17    0xe0b1c  1      OPC=nop             
  nop                               #  18    0xe0b1d  1      OPC=nop             
  nop                               #  19    0xe0b1e  1      OPC=nop             
  nop                               #  20    0xe0b1f  1      OPC=nop             
  movl %ebx, %ebx                   #  21    0xe0b20  2      OPC=movl_r32_r32    
  movl %eax, 0x1c(%r15,%rbx,1)      #  22    0xe0b22  5      OPC=movl_m32_r32    
  movq $0x474e5543432b2b00, %rax    #  23    0xe0b27  10     OPC=movq_r64_imm64  
  movl %ebx, %ebx                   #  24    0xe0b31  2      OPC=movl_r32_r32    
  movq %rax, 0x40(%r15,%rbx,1)      #  25    0xe0b33  5      OPC=movq_m64_r64    
  addl $0x40, %ebx                  #  26    0xe0b38  3      OPC=addl_r32_imm8   
  movl %ebx, %edi                   #  27    0xe0b3b  2      OPC=movl_r32_r32    
  nop                               #  28    0xe0b3d  1      OPC=nop             
  nop                               #  29    0xe0b3e  1      OPC=nop             
  nop                               #  30    0xe0b3f  1      OPC=nop             
  nop                               #  31    0xe0b40  1      OPC=nop             
  nop                               #  32    0xe0b41  1      OPC=nop             
  nop                               #  33    0xe0b42  1      OPC=nop             
  nop                               #  34    0xe0b43  1      OPC=nop             
  nop                               #  35    0xe0b44  1      OPC=nop             
  nop                               #  36    0xe0b45  1      OPC=nop             
  nop                               #  37    0xe0b46  1      OPC=nop             
  nop                               #  38    0xe0b47  1      OPC=nop             
  nop                               #  39    0xe0b48  1      OPC=nop             
  nop                               #  40    0xe0b49  1      OPC=nop             
  nop                               #  41    0xe0b4a  1      OPC=nop             
  nop                               #  42    0xe0b4b  1      OPC=nop             
  nop                               #  43    0xe0b4c  1      OPC=nop             
  nop                               #  44    0xe0b4d  1      OPC=nop             
  nop                               #  45    0xe0b4e  1      OPC=nop             
  nop                               #  46    0xe0b4f  1      OPC=nop             
  nop                               #  47    0xe0b50  1      OPC=nop             
  nop                               #  48    0xe0b51  1      OPC=nop             
  nop                               #  49    0xe0b52  1      OPC=nop             
  nop                               #  50    0xe0b53  1      OPC=nop             
  nop                               #  51    0xe0b54  1      OPC=nop             
  nop                               #  52    0xe0b55  1      OPC=nop             
  nop                               #  53    0xe0b56  1      OPC=nop             
  nop                               #  54    0xe0b57  1      OPC=nop             
  nop                               #  55    0xe0b58  1      OPC=nop             
  nop                               #  56    0xe0b59  1      OPC=nop             
  nop                               #  57    0xe0b5a  1      OPC=nop             
  callq ._Unwind_RaiseException     #  58    0xe0b5b  5      OPC=callq_label     
  movl %ebx, %edi                   #  59    0xe0b60  2      OPC=movl_r32_r32    
  nop                               #  60    0xe0b62  1      OPC=nop             
  nop                               #  61    0xe0b63  1      OPC=nop             
  nop                               #  62    0xe0b64  1      OPC=nop             
  nop                               #  63    0xe0b65  1      OPC=nop             
  nop                               #  64    0xe0b66  1      OPC=nop             
  nop                               #  65    0xe0b67  1      OPC=nop             
  nop                               #  66    0xe0b68  1      OPC=nop             
  nop                               #  67    0xe0b69  1      OPC=nop             
  nop                               #  68    0xe0b6a  1      OPC=nop             
  nop                               #  69    0xe0b6b  1      OPC=nop             
  nop                               #  70    0xe0b6c  1      OPC=nop             
  nop                               #  71    0xe0b6d  1      OPC=nop             
  nop                               #  72    0xe0b6e  1      OPC=nop             
  nop                               #  73    0xe0b6f  1      OPC=nop             
  nop                               #  74    0xe0b70  1      OPC=nop             
  nop                               #  75    0xe0b71  1      OPC=nop             
  nop                               #  76    0xe0b72  1      OPC=nop             
  nop                               #  77    0xe0b73  1      OPC=nop             
  nop                               #  78    0xe0b74  1      OPC=nop             
  nop                               #  79    0xe0b75  1      OPC=nop             
  nop                               #  80    0xe0b76  1      OPC=nop             
  nop                               #  81    0xe0b77  1      OPC=nop             
  nop                               #  82    0xe0b78  1      OPC=nop             
  nop                               #  83    0xe0b79  1      OPC=nop             
  nop                               #  84    0xe0b7a  1      OPC=nop             
  callq .__cxa_begin_catch          #  85    0xe0b7b  5      OPC=callq_label     
  nop                               #  86    0xe0b80  1      OPC=nop             
  nop                               #  87    0xe0b81  1      OPC=nop             
  nop                               #  88    0xe0b82  1      OPC=nop             
  nop                               #  89    0xe0b83  1      OPC=nop             
  nop                               #  90    0xe0b84  1      OPC=nop             
  nop                               #  91    0xe0b85  1      OPC=nop             
  nop                               #  92    0xe0b86  1      OPC=nop             
  nop                               #  93    0xe0b87  1      OPC=nop             
  nop                               #  94    0xe0b88  1      OPC=nop             
  nop                               #  95    0xe0b89  1      OPC=nop             
  nop                               #  96    0xe0b8a  1      OPC=nop             
  nop                               #  97    0xe0b8b  1      OPC=nop             
  nop                               #  98    0xe0b8c  1      OPC=nop             
  nop                               #  99    0xe0b8d  1      OPC=nop             
  nop                               #  100   0xe0b8e  1      OPC=nop             
  nop                               #  101   0xe0b8f  1      OPC=nop             
  nop                               #  102   0xe0b90  1      OPC=nop             
  nop                               #  103   0xe0b91  1      OPC=nop             
  nop                               #  104   0xe0b92  1      OPC=nop             
  nop                               #  105   0xe0b93  1      OPC=nop             
  nop                               #  106   0xe0b94  1      OPC=nop             
  nop                               #  107   0xe0b95  1      OPC=nop             
  nop                               #  108   0xe0b96  1      OPC=nop             
  nop                               #  109   0xe0b97  1      OPC=nop             
  nop                               #  110   0xe0b98  1      OPC=nop             
  nop                               #  111   0xe0b99  1      OPC=nop             
  nop                               #  112   0xe0b9a  1      OPC=nop             
  callq ._ZSt9terminatev            #  113   0xe0b9b  5      OPC=callq_label     
                                                                                 
.size __cxa_throw, .-__cxa_throw

