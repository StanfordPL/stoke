  .text
  .globl __libnacl_irt_dev_fdio_init
  .type __libnacl_irt_dev_fdio_init, @function

#! file-offset 0x197e20
#! rip-offset  0x157e20
#! capacity    160 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.__libnacl_irt_dev_fdio_init:  #        0x157e20  0      OPC=0     
  subl $0x8, %esp              #  1     0x157e20  3      OPC=2384  
  addq %r15, %rsp              #  2     0x157e23  3      OPC=72    
  movl $0x38, %edx             #  3     0x157e26  5      OPC=1154  
  movl $0x100792e0, %esi       #  4     0x157e2b  5      OPC=1154  
  movl $0x1004b5c0, %edi       #  5     0x157e30  5      OPC=1154  
  nop                          #  6     0x157e35  1      OPC=1343  
  nop                          #  7     0x157e36  1      OPC=1343  
  nop                          #  8     0x157e37  1      OPC=1343  
  nop                          #  9     0x157e38  1      OPC=1343  
  nop                          #  10    0x157e39  1      OPC=1343  
  nop                          #  11    0x157e3a  1      OPC=1343  
  callq .__libnacl_irt_query   #  12    0x157e3b  5      OPC=260   
  testl %eax, %eax             #  13    0x157e40  2      OPC=2436  
  je .L_157e80                 #  14    0x157e42  6      OPC=893   
  nop                          #  15    0x157e48  1      OPC=1343  
  nop                          #  16    0x157e49  1      OPC=1343  
  nop                          #  17    0x157e4a  1      OPC=1343  
  nop                          #  18    0x157e4b  1      OPC=1343  
  nop                          #  19    0x157e4c  1      OPC=1343  
  nop                          #  20    0x157e4d  1      OPC=1343  
  nop                          #  21    0x157e4e  1      OPC=1343  
  nop                          #  22    0x157e4f  1      OPC=1343  
  nop                          #  23    0x157e50  1      OPC=1343  
  nop                          #  24    0x157e51  1      OPC=1343  
  nop                          #  25    0x157e52  1      OPC=1343  
  nop                          #  26    0x157e53  1      OPC=1343  
  nop                          #  27    0x157e54  1      OPC=1343  
  nop                          #  28    0x157e55  1      OPC=1343  
  nop                          #  29    0x157e56  1      OPC=1343  
  nop                          #  30    0x157e57  1      OPC=1343  
  nop                          #  31    0x157e58  1      OPC=1343  
  nop                          #  32    0x157e59  1      OPC=1343  
  nop                          #  33    0x157e5a  1      OPC=1343  
  nop                          #  34    0x157e5b  1      OPC=1343  
  nop                          #  35    0x157e5c  1      OPC=1343  
  nop                          #  36    0x157e5d  1      OPC=1343  
  nop                          #  37    0x157e5e  1      OPC=1343  
  nop                          #  38    0x157e5f  1      OPC=1343  
  nop                          #  39    0x157e60  1      OPC=1343  
  nop                          #  40    0x157e61  1      OPC=1343  
  nop                          #  41    0x157e62  1      OPC=1343  
  nop                          #  42    0x157e63  1      OPC=1343  
  nop                          #  43    0x157e64  1      OPC=1343  
  nop                          #  44    0x157e65  1      OPC=1343  
.L_157e60:                     #        0x157e66  0      OPC=0     
  addl $0x8, %esp              #  45    0x157e66  3      OPC=65    
  addq %r15, %rsp              #  46    0x157e69  3      OPC=72    
  popq %r11                    #  47    0x157e6c  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  48    0x157e6e  7      OPC=131   
  nop                          #  49    0x157e75  1      OPC=1343  
  nop                          #  50    0x157e76  1      OPC=1343  
  nop                          #  51    0x157e77  1      OPC=1343  
  nop                          #  52    0x157e78  1      OPC=1343  
  addq %r15, %r11              #  53    0x157e79  3      OPC=72    
  jmpq %r11                    #  54    0x157e7c  3      OPC=928   
  nop                          #  55    0x157e7f  1      OPC=1343  
  nop                          #  56    0x157e80  1      OPC=1343  
  nop                          #  57    0x157e81  1      OPC=1343  
  nop                          #  58    0x157e82  1      OPC=1343  
  nop                          #  59    0x157e83  1      OPC=1343  
  nop                          #  60    0x157e84  1      OPC=1343  
  nop                          #  61    0x157e85  1      OPC=1343  
  nop                          #  62    0x157e86  1      OPC=1343  
  nop                          #  63    0x157e87  1      OPC=1343  
  nop                          #  64    0x157e88  1      OPC=1343  
  nop                          #  65    0x157e89  1      OPC=1343  
  nop                          #  66    0x157e8a  1      OPC=1343  
  nop                          #  67    0x157e8b  1      OPC=1343  
  nop                          #  68    0x157e8c  1      OPC=1343  
.L_157e80:                     #        0x157e8d  0      OPC=0     
  movl $0x20, %edx             #  69    0x157e8d  5      OPC=1154  
  movl $0x100792e0, %esi       #  70    0x157e92  5      OPC=1154  
  movl $0x10040a74, %edi       #  71    0x157e97  5      OPC=1154  
  nop                          #  72    0x157e9c  1      OPC=1343  
  nop                          #  73    0x157e9d  1      OPC=1343  
  nop                          #  74    0x157e9e  1      OPC=1343  
  nop                          #  75    0x157e9f  1      OPC=1343  
  nop                          #  76    0x157ea0  1      OPC=1343  
  nop                          #  77    0x157ea1  1      OPC=1343  
  nop                          #  78    0x157ea2  1      OPC=1343  
  nop                          #  79    0x157ea3  1      OPC=1343  
  nop                          #  80    0x157ea4  1      OPC=1343  
  nop                          #  81    0x157ea5  1      OPC=1343  
  nop                          #  82    0x157ea6  1      OPC=1343  
  nop                          #  83    0x157ea7  1      OPC=1343  
  callq .__libnacl_irt_query   #  84    0x157ea8  5      OPC=260   
  testl %eax, %eax             #  85    0x157ead  2      OPC=2436  
  jne .L_157e60                #  86    0x157eaf  6      OPC=963   
  nop                          #  87    0x157eb5  1      OPC=1343  
  nop                          #  88    0x157eb6  1      OPC=1343  
  movl $0x20, %edx             #  89    0x157eb7  5      OPC=1154  
  movl $0x100792e0, %esi       #  90    0x157ebc  5      OPC=1154  
  movl $0x10040a86, %edi       #  91    0x157ec1  5      OPC=1154  
  addl $0x8, %esp              #  92    0x157ec6  3      OPC=65    
  addq %r15, %rsp              #  93    0x157ec9  3      OPC=72    
  jmpq .__libnacl_irt_query    #  94    0x157ecc  5      OPC=930   
  nop                          #  95    0x157ed1  1      OPC=1343  
  nop                          #  96    0x157ed2  1      OPC=1343  
                                                                   
.size __libnacl_irt_dev_fdio_init, .-__libnacl_irt_dev_fdio_init

