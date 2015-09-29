  .text
  .globl __newlib_thread_init
  .type __newlib_thread_init, @function

#! file-offset 0x15ee60
#! rip-offset  0x11ee60
#! capacity    96 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.__newlib_thread_init:            #        0x11ee60  0      OPC=<label>         
  pushq %rbx                      #  1     0x11ee60  1      OPC=pushq_r64_1     
  nop                             #  2     0x11ee61  1      OPC=nop             
  nop                             #  3     0x11ee62  1      OPC=nop             
  nop                             #  4     0x11ee63  1      OPC=nop             
  nop                             #  5     0x11ee64  1      OPC=nop             
  nop                             #  6     0x11ee65  1      OPC=nop             
  nop                             #  7     0x11ee66  1      OPC=nop             
  nop                             #  8     0x11ee67  1      OPC=nop             
  nop                             #  9     0x11ee68  1      OPC=nop             
  nop                             #  10    0x11ee69  1      OPC=nop             
  nop                             #  11    0x11ee6a  1      OPC=nop             
  nop                             #  12    0x11ee6b  1      OPC=nop             
  nop                             #  13    0x11ee6c  1      OPC=nop             
  nop                             #  14    0x11ee6d  1      OPC=nop             
  nop                             #  15    0x11ee6e  1      OPC=nop             
  nop                             #  16    0x11ee6f  1      OPC=nop             
  nop                             #  17    0x11ee70  1      OPC=nop             
  nop                             #  18    0x11ee71  1      OPC=nop             
  nop                             #  19    0x11ee72  1      OPC=nop             
  nop                             #  20    0x11ee73  1      OPC=nop             
  nop                             #  21    0x11ee74  1      OPC=nop             
  nop                             #  22    0x11ee75  1      OPC=nop             
  nop                             #  23    0x11ee76  1      OPC=nop             
  nop                             #  24    0x11ee77  1      OPC=nop             
  nop                             #  25    0x11ee78  1      OPC=nop             
  nop                             #  26    0x11ee79  1      OPC=nop             
  nop                             #  27    0x11ee7a  1      OPC=nop             
  callq .__nacl_read_tp           #  28    0x11ee7b  5      OPC=callq_label     
  movq %rax, %rbx                 #  29    0x11ee80  3      OPC=movq_r64_r64    
  nop                             #  30    0x11ee83  1      OPC=nop             
  nop                             #  31    0x11ee84  1      OPC=nop             
  nop                             #  32    0x11ee85  1      OPC=nop             
  nop                             #  33    0x11ee86  1      OPC=nop             
  nop                             #  34    0x11ee87  1      OPC=nop             
  nop                             #  35    0x11ee88  1      OPC=nop             
  nop                             #  36    0x11ee89  1      OPC=nop             
  nop                             #  37    0x11ee8a  1      OPC=nop             
  nop                             #  38    0x11ee8b  1      OPC=nop             
  nop                             #  39    0x11ee8c  1      OPC=nop             
  nop                             #  40    0x11ee8d  1      OPC=nop             
  nop                             #  41    0x11ee8e  1      OPC=nop             
  nop                             #  42    0x11ee8f  1      OPC=nop             
  nop                             #  43    0x11ee90  1      OPC=nop             
  nop                             #  44    0x11ee91  1      OPC=nop             
  nop                             #  45    0x11ee92  1      OPC=nop             
  nop                             #  46    0x11ee93  1      OPC=nop             
  nop                             #  47    0x11ee94  1      OPC=nop             
  nop                             #  48    0x11ee95  1      OPC=nop             
  nop                             #  49    0x11ee96  1      OPC=nop             
  nop                             #  50    0x11ee97  1      OPC=nop             
  nop                             #  51    0x11ee98  1      OPC=nop             
  nop                             #  52    0x11ee99  1      OPC=nop             
  nop                             #  53    0x11ee9a  1      OPC=nop             
  callq .__nacl_read_tp           #  54    0x11ee9b  5      OPC=callq_label     
  addq $0xfffffb88, %rax          #  55    0x11eea0  6      OPC=addq_rax_imm32  
  movl %ebx, %ebx                 #  56    0x11eea6  2      OPC=movl_r32_r32    
  movl %eax, -0x480(%r15,%rbx,1)  #  57    0x11eea8  8      OPC=movl_m32_r32    
  popq %rbx                       #  58    0x11eeb0  1      OPC=popq_r64_1      
  popq %r11                       #  59    0x11eeb1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  60    0x11eeb3  7      OPC=andl_r32_imm32  
  nop                             #  61    0x11eeba  1      OPC=nop             
  nop                             #  62    0x11eebb  1      OPC=nop             
  nop                             #  63    0x11eebc  1      OPC=nop             
  nop                             #  64    0x11eebd  1      OPC=nop             
  addq %r15, %r11                 #  65    0x11eebe  3      OPC=addq_r64_r64    
  jmpq %r11                       #  66    0x11eec1  3      OPC=jmpq_r64        
  nop                             #  67    0x11eec4  1      OPC=nop             
  nop                             #  68    0x11eec5  1      OPC=nop             
  nop                             #  69    0x11eec6  1      OPC=nop             
                                                                                
.size __newlib_thread_init, .-__newlib_thread_init

