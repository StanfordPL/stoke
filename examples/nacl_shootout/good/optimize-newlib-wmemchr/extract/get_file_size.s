  .text
  .globl get_file_size
  .type get_file_size, @function

#! file-offset 0x61b60
#! rip-offset  0x21b60
#! capacity    160 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.get_file_size:            #        0x21b60  0      OPC=<label>         
  pushq %r13               #  1     0x21b60  2      OPC=pushq_r64_1     
  pushq %r12               #  2     0x21b62  2      OPC=pushq_r64_1     
  pushq %rbx               #  3     0x21b64  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  4     0x21b65  2      OPC=movl_r32_r32    
  movl %ebx, %edi          #  5     0x21b67  2      OPC=movl_r32_r32    
  nop                      #  6     0x21b69  1      OPC=nop             
  nop                      #  7     0x21b6a  1      OPC=nop             
  nop                      #  8     0x21b6b  1      OPC=nop             
  nop                      #  9     0x21b6c  1      OPC=nop             
  nop                      #  10    0x21b6d  1      OPC=nop             
  nop                      #  11    0x21b6e  1      OPC=nop             
  nop                      #  12    0x21b6f  1      OPC=nop             
  nop                      #  13    0x21b70  1      OPC=nop             
  nop                      #  14    0x21b71  1      OPC=nop             
  nop                      #  15    0x21b72  1      OPC=nop             
  nop                      #  16    0x21b73  1      OPC=nop             
  nop                      #  17    0x21b74  1      OPC=nop             
  nop                      #  18    0x21b75  1      OPC=nop             
  nop                      #  19    0x21b76  1      OPC=nop             
  nop                      #  20    0x21b77  1      OPC=nop             
  nop                      #  21    0x21b78  1      OPC=nop             
  nop                      #  22    0x21b79  1      OPC=nop             
  nop                      #  23    0x21b7a  1      OPC=nop             
  callq .ftell             #  24    0x21b7b  5      OPC=callq_label     
  movl %eax, %r12d         #  25    0x21b80  3      OPC=movl_r32_r32    
  movl $0x2, %edx          #  26    0x21b83  5      OPC=movl_r32_imm32  
  xorl %esi, %esi          #  27    0x21b88  2      OPC=xorl_r32_r32    
  movl %ebx, %edi          #  28    0x21b8a  2      OPC=movl_r32_r32    
  nop                      #  29    0x21b8c  1      OPC=nop             
  nop                      #  30    0x21b8d  1      OPC=nop             
  nop                      #  31    0x21b8e  1      OPC=nop             
  nop                      #  32    0x21b8f  1      OPC=nop             
  nop                      #  33    0x21b90  1      OPC=nop             
  nop                      #  34    0x21b91  1      OPC=nop             
  nop                      #  35    0x21b92  1      OPC=nop             
  nop                      #  36    0x21b93  1      OPC=nop             
  nop                      #  37    0x21b94  1      OPC=nop             
  nop                      #  38    0x21b95  1      OPC=nop             
  nop                      #  39    0x21b96  1      OPC=nop             
  nop                      #  40    0x21b97  1      OPC=nop             
  nop                      #  41    0x21b98  1      OPC=nop             
  nop                      #  42    0x21b99  1      OPC=nop             
  nop                      #  43    0x21b9a  1      OPC=nop             
  callq .fseek             #  44    0x21b9b  5      OPC=callq_label     
  movl %ebx, %edi          #  45    0x21ba0  2      OPC=movl_r32_r32    
  nop                      #  46    0x21ba2  1      OPC=nop             
  nop                      #  47    0x21ba3  1      OPC=nop             
  nop                      #  48    0x21ba4  1      OPC=nop             
  nop                      #  49    0x21ba5  1      OPC=nop             
  nop                      #  50    0x21ba6  1      OPC=nop             
  nop                      #  51    0x21ba7  1      OPC=nop             
  nop                      #  52    0x21ba8  1      OPC=nop             
  nop                      #  53    0x21ba9  1      OPC=nop             
  nop                      #  54    0x21baa  1      OPC=nop             
  nop                      #  55    0x21bab  1      OPC=nop             
  nop                      #  56    0x21bac  1      OPC=nop             
  nop                      #  57    0x21bad  1      OPC=nop             
  nop                      #  58    0x21bae  1      OPC=nop             
  nop                      #  59    0x21baf  1      OPC=nop             
  nop                      #  60    0x21bb0  1      OPC=nop             
  nop                      #  61    0x21bb1  1      OPC=nop             
  nop                      #  62    0x21bb2  1      OPC=nop             
  nop                      #  63    0x21bb3  1      OPC=nop             
  nop                      #  64    0x21bb4  1      OPC=nop             
  nop                      #  65    0x21bb5  1      OPC=nop             
  nop                      #  66    0x21bb6  1      OPC=nop             
  nop                      #  67    0x21bb7  1      OPC=nop             
  nop                      #  68    0x21bb8  1      OPC=nop             
  nop                      #  69    0x21bb9  1      OPC=nop             
  nop                      #  70    0x21bba  1      OPC=nop             
  callq .ftell             #  71    0x21bbb  5      OPC=callq_label     
  movl %eax, %r13d         #  72    0x21bc0  3      OPC=movl_r32_r32    
  xorl %edx, %edx          #  73    0x21bc3  2      OPC=xorl_r32_r32    
  movl %r12d, %esi         #  74    0x21bc5  3      OPC=movl_r32_r32    
  movl %ebx, %edi          #  75    0x21bc8  2      OPC=movl_r32_r32    
  xchgw %ax, %ax           #  76    0x21bca  2      OPC=xchgw_ax_r16    
  nop                      #  77    0x21bcc  1      OPC=nop             
  nop                      #  78    0x21bcd  1      OPC=nop             
  nop                      #  79    0x21bce  1      OPC=nop             
  nop                      #  80    0x21bcf  1      OPC=nop             
  nop                      #  81    0x21bd0  1      OPC=nop             
  nop                      #  82    0x21bd1  1      OPC=nop             
  nop                      #  83    0x21bd2  1      OPC=nop             
  nop                      #  84    0x21bd3  1      OPC=nop             
  nop                      #  85    0x21bd4  1      OPC=nop             
  nop                      #  86    0x21bd5  1      OPC=nop             
  nop                      #  87    0x21bd6  1      OPC=nop             
  nop                      #  88    0x21bd7  1      OPC=nop             
  nop                      #  89    0x21bd8  1      OPC=nop             
  nop                      #  90    0x21bd9  1      OPC=nop             
  nop                      #  91    0x21bda  1      OPC=nop             
  callq .fseek             #  92    0x21bdb  5      OPC=callq_label     
  subl %r12d, %r13d        #  93    0x21be0  3      OPC=subl_r32_r32    
  movslq %r13d, %rax       #  94    0x21be3  3      OPC=movslq_r64_r32  
  popq %rbx                #  95    0x21be6  1      OPC=popq_r64_1      
  popq %r12                #  96    0x21be7  2      OPC=popq_r64_1      
  popq %r13                #  97    0x21be9  2      OPC=popq_r64_1      
  popq %r11                #  98    0x21beb  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  99    0x21bed  7      OPC=andl_r32_imm32  
  nop                      #  100   0x21bf4  1      OPC=nop             
  nop                      #  101   0x21bf5  1      OPC=nop             
  nop                      #  102   0x21bf6  1      OPC=nop             
  nop                      #  103   0x21bf7  1      OPC=nop             
  addq %r15, %r11          #  104   0x21bf8  3      OPC=addq_r64_r64    
  jmpq %r11                #  105   0x21bfb  3      OPC=jmpq_r64        
  nop                      #  106   0x21bfe  1      OPC=nop             
  nop                      #  107   0x21bff  1      OPC=nop             
  nop                      #  108   0x21c00  1      OPC=nop             
  nop                      #  109   0x21c01  1      OPC=nop             
  nop                      #  110   0x21c02  1      OPC=nop             
  nop                      #  111   0x21c03  1      OPC=nop             
  nop                      #  112   0x21c04  1      OPC=nop             
  nop                      #  113   0x21c05  1      OPC=nop             
  nop                      #  114   0x21c06  1      OPC=nop             
                                                                        
.size get_file_size, .-get_file_size

