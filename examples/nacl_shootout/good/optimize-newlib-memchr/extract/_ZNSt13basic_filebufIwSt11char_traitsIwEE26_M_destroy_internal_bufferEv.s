  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv, @function

#! file-offset 0x12b480
#! rip-offset  0xeb480
#! capacity    192 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv:  #        0xeb480  0      OPC=<label>         
  pushq %rbx                                                               #  1     0xeb480  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  2     0xeb481  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                          #  3     0xeb483  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x60(%r15,%rbx,1)                                             #  4     0xeb485  6      OPC=cmpb_m8_imm8    
  je .L_eb4c0                                                              #  5     0xeb48b  2      OPC=je_label        
  movl %ebx, %ebx                                                          #  6     0xeb48d  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rbx,1), %edi                                             #  7     0xeb48f  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  8     0xeb494  3      OPC=testq_r64_r64   
  je .L_eb4a0                                                              #  9     0xeb497  2      OPC=je_label        
  xchgw %ax, %ax                                                           #  10    0xeb499  2      OPC=xchgw_ax_r16    
  callq ._ZdaPv                                                            #  11    0xeb49b  5      OPC=callq_label     
.L_eb4a0:                                                                  #        0xeb4a0  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  12    0xeb4a0  2      OPC=movl_r32_r32    
  movl $0x0, 0x58(%r15,%rbx,1)                                             #  13    0xeb4a2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  14    0xeb4ab  2      OPC=movl_r32_r32    
  movb $0x0, 0x60(%r15,%rbx,1)                                             #  15    0xeb4ad  6      OPC=movb_m8_imm8    
  nop                                                                      #  16    0xeb4b3  1      OPC=nop             
  nop                                                                      #  17    0xeb4b4  1      OPC=nop             
  nop                                                                      #  18    0xeb4b5  1      OPC=nop             
  nop                                                                      #  19    0xeb4b6  1      OPC=nop             
  nop                                                                      #  20    0xeb4b7  1      OPC=nop             
  nop                                                                      #  21    0xeb4b8  1      OPC=nop             
  nop                                                                      #  22    0xeb4b9  1      OPC=nop             
  nop                                                                      #  23    0xeb4ba  1      OPC=nop             
  nop                                                                      #  24    0xeb4bb  1      OPC=nop             
  nop                                                                      #  25    0xeb4bc  1      OPC=nop             
  nop                                                                      #  26    0xeb4bd  1      OPC=nop             
  nop                                                                      #  27    0xeb4be  1      OPC=nop             
  nop                                                                      #  28    0xeb4bf  1      OPC=nop             
.L_eb4c0:                                                                  #        0xeb4c0  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  29    0xeb4c0  2      OPC=movl_r32_r32    
  movl 0x78(%r15,%rbx,1), %edi                                             #  30    0xeb4c2  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  31    0xeb4c7  3      OPC=testq_r64_r64   
  je .L_eb4e0                                                              #  32    0xeb4ca  2      OPC=je_label        
  nop                                                                      #  33    0xeb4cc  1      OPC=nop             
  nop                                                                      #  34    0xeb4cd  1      OPC=nop             
  nop                                                                      #  35    0xeb4ce  1      OPC=nop             
  nop                                                                      #  36    0xeb4cf  1      OPC=nop             
  nop                                                                      #  37    0xeb4d0  1      OPC=nop             
  nop                                                                      #  38    0xeb4d1  1      OPC=nop             
  nop                                                                      #  39    0xeb4d2  1      OPC=nop             
  nop                                                                      #  40    0xeb4d3  1      OPC=nop             
  nop                                                                      #  41    0xeb4d4  1      OPC=nop             
  nop                                                                      #  42    0xeb4d5  1      OPC=nop             
  nop                                                                      #  43    0xeb4d6  1      OPC=nop             
  nop                                                                      #  44    0xeb4d7  1      OPC=nop             
  nop                                                                      #  45    0xeb4d8  1      OPC=nop             
  nop                                                                      #  46    0xeb4d9  1      OPC=nop             
  nop                                                                      #  47    0xeb4da  1      OPC=nop             
  callq ._ZdaPv                                                            #  48    0xeb4db  5      OPC=callq_label     
.L_eb4e0:                                                                  #        0xeb4e0  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  49    0xeb4e0  2      OPC=movl_r32_r32    
  movl $0x0, 0x78(%r15,%rbx,1)                                             #  50    0xeb4e2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  51    0xeb4eb  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)                                             #  52    0xeb4ed  9      OPC=movl_m32_imm32  
  nop                                                                      #  53    0xeb4f6  1      OPC=nop             
  nop                                                                      #  54    0xeb4f7  1      OPC=nop             
  nop                                                                      #  55    0xeb4f8  1      OPC=nop             
  nop                                                                      #  56    0xeb4f9  1      OPC=nop             
  nop                                                                      #  57    0xeb4fa  1      OPC=nop             
  nop                                                                      #  58    0xeb4fb  1      OPC=nop             
  nop                                                                      #  59    0xeb4fc  1      OPC=nop             
  nop                                                                      #  60    0xeb4fd  1      OPC=nop             
  nop                                                                      #  61    0xeb4fe  1      OPC=nop             
  nop                                                                      #  62    0xeb4ff  1      OPC=nop             
  movl %ebx, %ebx                                                          #  63    0xeb500  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)                                             #  64    0xeb502  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  65    0xeb50e  2      OPC=movl_r32_r32    
  movl $0x0, 0x84(%r15,%rbx,1)                                             #  66    0xeb510  12     OPC=movl_m32_imm32  
  popq %rbx                                                                #  67    0xeb51c  1      OPC=popq_r64_1      
  popq %r11                                                                #  68    0xeb51d  2      OPC=popq_r64_1      
  nop                                                                      #  69    0xeb51f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                  #  70    0xeb520  7      OPC=andl_r32_imm32  
  nop                                                                      #  71    0xeb527  1      OPC=nop             
  nop                                                                      #  72    0xeb528  1      OPC=nop             
  nop                                                                      #  73    0xeb529  1      OPC=nop             
  nop                                                                      #  74    0xeb52a  1      OPC=nop             
  addq %r15, %r11                                                          #  75    0xeb52b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  76    0xeb52e  3      OPC=jmpq_r64        
  nop                                                                      #  77    0xeb531  1      OPC=nop             
  nop                                                                      #  78    0xeb532  1      OPC=nop             
  nop                                                                      #  79    0xeb533  1      OPC=nop             
  nop                                                                      #  80    0xeb534  1      OPC=nop             
  nop                                                                      #  81    0xeb535  1      OPC=nop             
  nop                                                                      #  82    0xeb536  1      OPC=nop             
  nop                                                                      #  83    0xeb537  1      OPC=nop             
  nop                                                                      #  84    0xeb538  1      OPC=nop             
  nop                                                                      #  85    0xeb539  1      OPC=nop             
  nop                                                                      #  86    0xeb53a  1      OPC=nop             
  nop                                                                      #  87    0xeb53b  1      OPC=nop             
  nop                                                                      #  88    0xeb53c  1      OPC=nop             
  nop                                                                      #  89    0xeb53d  1      OPC=nop             
  nop                                                                      #  90    0xeb53e  1      OPC=nop             
  nop                                                                      #  91    0xeb53f  1      OPC=nop             
  nop                                                                      #  92    0xeb540  1      OPC=nop             
  nop                                                                      #  93    0xeb541  1      OPC=nop             
  nop                                                                      #  94    0xeb542  1      OPC=nop             
  nop                                                                      #  95    0xeb543  1      OPC=nop             
  nop                                                                      #  96    0xeb544  1      OPC=nop             
  nop                                                                      #  97    0xeb545  1      OPC=nop             
  nop                                                                      #  98    0xeb546  1      OPC=nop             
                                                                                                                        
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv

