  .text
  .globl get_file_size
  .type get_file_size, @function

#! file-offset 0x61b40
#! rip-offset  0x21b40
#! capacity    160 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.get_file_size:            #        0x21b40  0      OPC=0     
  pushq %r13               #  1     0x21b40  2      OPC=1861  
  pushq %r12               #  2     0x21b42  2      OPC=1861  
  pushq %rbx               #  3     0x21b44  1      OPC=1861  
  movl %edi, %ebx          #  4     0x21b45  2      OPC=1157  
  movl %ebx, %edi          #  5     0x21b47  2      OPC=1157  
  nop                      #  6     0x21b49  1      OPC=1343  
  nop                      #  7     0x21b4a  1      OPC=1343  
  nop                      #  8     0x21b4b  1      OPC=1343  
  nop                      #  9     0x21b4c  1      OPC=1343  
  nop                      #  10    0x21b4d  1      OPC=1343  
  nop                      #  11    0x21b4e  1      OPC=1343  
  nop                      #  12    0x21b4f  1      OPC=1343  
  nop                      #  13    0x21b50  1      OPC=1343  
  nop                      #  14    0x21b51  1      OPC=1343  
  nop                      #  15    0x21b52  1      OPC=1343  
  nop                      #  16    0x21b53  1      OPC=1343  
  nop                      #  17    0x21b54  1      OPC=1343  
  nop                      #  18    0x21b55  1      OPC=1343  
  nop                      #  19    0x21b56  1      OPC=1343  
  nop                      #  20    0x21b57  1      OPC=1343  
  nop                      #  21    0x21b58  1      OPC=1343  
  nop                      #  22    0x21b59  1      OPC=1343  
  nop                      #  23    0x21b5a  1      OPC=1343  
  callq .ftell             #  24    0x21b5b  5      OPC=260   
  movl %eax, %r12d         #  25    0x21b60  3      OPC=1157  
  movl $0x2, %edx          #  26    0x21b63  5      OPC=1154  
  xorl %esi, %esi          #  27    0x21b68  2      OPC=3758  
  movl %ebx, %edi          #  28    0x21b6a  2      OPC=1157  
  nop                      #  29    0x21b6c  1      OPC=1343  
  nop                      #  30    0x21b6d  1      OPC=1343  
  nop                      #  31    0x21b6e  1      OPC=1343  
  nop                      #  32    0x21b6f  1      OPC=1343  
  nop                      #  33    0x21b70  1      OPC=1343  
  nop                      #  34    0x21b71  1      OPC=1343  
  nop                      #  35    0x21b72  1      OPC=1343  
  nop                      #  36    0x21b73  1      OPC=1343  
  nop                      #  37    0x21b74  1      OPC=1343  
  nop                      #  38    0x21b75  1      OPC=1343  
  nop                      #  39    0x21b76  1      OPC=1343  
  nop                      #  40    0x21b77  1      OPC=1343  
  nop                      #  41    0x21b78  1      OPC=1343  
  nop                      #  42    0x21b79  1      OPC=1343  
  nop                      #  43    0x21b7a  1      OPC=1343  
  callq .fseek             #  44    0x21b7b  5      OPC=260   
  movl %ebx, %edi          #  45    0x21b80  2      OPC=1157  
  nop                      #  46    0x21b82  1      OPC=1343  
  nop                      #  47    0x21b83  1      OPC=1343  
  nop                      #  48    0x21b84  1      OPC=1343  
  nop                      #  49    0x21b85  1      OPC=1343  
  nop                      #  50    0x21b86  1      OPC=1343  
  nop                      #  51    0x21b87  1      OPC=1343  
  nop                      #  52    0x21b88  1      OPC=1343  
  nop                      #  53    0x21b89  1      OPC=1343  
  nop                      #  54    0x21b8a  1      OPC=1343  
  nop                      #  55    0x21b8b  1      OPC=1343  
  nop                      #  56    0x21b8c  1      OPC=1343  
  nop                      #  57    0x21b8d  1      OPC=1343  
  nop                      #  58    0x21b8e  1      OPC=1343  
  nop                      #  59    0x21b8f  1      OPC=1343  
  nop                      #  60    0x21b90  1      OPC=1343  
  nop                      #  61    0x21b91  1      OPC=1343  
  nop                      #  62    0x21b92  1      OPC=1343  
  nop                      #  63    0x21b93  1      OPC=1343  
  nop                      #  64    0x21b94  1      OPC=1343  
  nop                      #  65    0x21b95  1      OPC=1343  
  nop                      #  66    0x21b96  1      OPC=1343  
  nop                      #  67    0x21b97  1      OPC=1343  
  nop                      #  68    0x21b98  1      OPC=1343  
  nop                      #  69    0x21b99  1      OPC=1343  
  nop                      #  70    0x21b9a  1      OPC=1343  
  callq .ftell             #  71    0x21b9b  5      OPC=260   
  movl %eax, %r13d         #  72    0x21ba0  3      OPC=1157  
  xorl %edx, %edx          #  73    0x21ba3  2      OPC=3758  
  movl %r12d, %esi         #  74    0x21ba5  3      OPC=1157  
  movl %ebx, %edi          #  75    0x21ba8  2      OPC=1157  
  xchgw %ax, %ax           #  76    0x21baa  2      OPC=3700  
  nop                      #  77    0x21bac  1      OPC=1343  
  nop                      #  78    0x21bad  1      OPC=1343  
  nop                      #  79    0x21bae  1      OPC=1343  
  nop                      #  80    0x21baf  1      OPC=1343  
  nop                      #  81    0x21bb0  1      OPC=1343  
  nop                      #  82    0x21bb1  1      OPC=1343  
  nop                      #  83    0x21bb2  1      OPC=1343  
  nop                      #  84    0x21bb3  1      OPC=1343  
  nop                      #  85    0x21bb4  1      OPC=1343  
  nop                      #  86    0x21bb5  1      OPC=1343  
  nop                      #  87    0x21bb6  1      OPC=1343  
  nop                      #  88    0x21bb7  1      OPC=1343  
  nop                      #  89    0x21bb8  1      OPC=1343  
  nop                      #  90    0x21bb9  1      OPC=1343  
  nop                      #  91    0x21bba  1      OPC=1343  
  callq .fseek             #  92    0x21bbb  5      OPC=260   
  subl %r12d, %r13d        #  93    0x21bc0  3      OPC=2386  
  movslq %r13d, %rax       #  94    0x21bc3  3      OPC=1289  
  popq %rbx                #  95    0x21bc6  1      OPC=1694  
  popq %r12                #  96    0x21bc7  2      OPC=1694  
  popq %r13                #  97    0x21bc9  2      OPC=1694  
  popq %r11                #  98    0x21bcb  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  99    0x21bcd  7      OPC=131   
  nop                      #  100   0x21bd4  1      OPC=1343  
  nop                      #  101   0x21bd5  1      OPC=1343  
  nop                      #  102   0x21bd6  1      OPC=1343  
  nop                      #  103   0x21bd7  1      OPC=1343  
  addq %r15, %r11          #  104   0x21bd8  3      OPC=72    
  jmpq %r11                #  105   0x21bdb  3      OPC=928   
  nop                      #  106   0x21bde  1      OPC=1343  
  nop                      #  107   0x21bdf  1      OPC=1343  
  nop                      #  108   0x21be0  1      OPC=1343  
  nop                      #  109   0x21be1  1      OPC=1343  
  nop                      #  110   0x21be2  1      OPC=1343  
  nop                      #  111   0x21be3  1      OPC=1343  
  nop                      #  112   0x21be4  1      OPC=1343  
  nop                      #  113   0x21be5  1      OPC=1343  
  nop                      #  114   0x21be6  1      OPC=1343  
                                                              
.size get_file_size, .-get_file_size

