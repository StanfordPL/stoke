  .text
  .globl __mcmp
  .type __mcmp, @function

#! file-offset 0x18ace0
#! rip-offset  0x14ace0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.__mcmp:                        #        0x14ace0  0      OPC=<label>         
  movl %edi, %edi               #  1     0x14ace0  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0x14ace2  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x14ace4  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rdi,1), %eax  #  4     0x14ace6  5      OPC=movl_r32_m32    
  movl %esi, %esi               #  5     0x14aceb  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rsi,1), %edx  #  6     0x14aced  5      OPC=movl_r32_m32    
  subl %edx, %eax               #  7     0x14acf2  2      OPC=subl_r32_r32    
  jne .L_14ad40                 #  8     0x14acf4  2      OPC=jne_label       
  leal 0x10(,%rdx,4), %edx      #  9     0x14acf6  7      OPC=leal_r32_m16    
  leal 0x14(%rdi), %ecx         #  10    0x14acfd  3      OPC=leal_r32_m16    
  leal 0x4(%rdx,%rsi,1), %esi   #  11    0x14ad00  4      OPC=leal_r32_m16    
  leal 0x4(%rdx,%rdi,1), %edi   #  12    0x14ad04  4      OPC=leal_r32_m16    
  nop                           #  13    0x14ad08  1      OPC=nop             
  nop                           #  14    0x14ad09  1      OPC=nop             
  nop                           #  15    0x14ad0a  1      OPC=nop             
  nop                           #  16    0x14ad0b  1      OPC=nop             
  nop                           #  17    0x14ad0c  1      OPC=nop             
  nop                           #  18    0x14ad0d  1      OPC=nop             
  nop                           #  19    0x14ad0e  1      OPC=nop             
  nop                           #  20    0x14ad0f  1      OPC=nop             
  nop                           #  21    0x14ad10  1      OPC=nop             
  nop                           #  22    0x14ad11  1      OPC=nop             
  nop                           #  23    0x14ad12  1      OPC=nop             
  nop                           #  24    0x14ad13  1      OPC=nop             
  nop                           #  25    0x14ad14  1      OPC=nop             
  nop                           #  26    0x14ad15  1      OPC=nop             
  nop                           #  27    0x14ad16  1      OPC=nop             
  nop                           #  28    0x14ad17  1      OPC=nop             
  nop                           #  29    0x14ad18  1      OPC=nop             
  nop                           #  30    0x14ad19  1      OPC=nop             
  nop                           #  31    0x14ad1a  1      OPC=nop             
  nop                           #  32    0x14ad1b  1      OPC=nop             
  nop                           #  33    0x14ad1c  1      OPC=nop             
  nop                           #  34    0x14ad1d  1      OPC=nop             
  nop                           #  35    0x14ad1e  1      OPC=nop             
  nop                           #  36    0x14ad1f  1      OPC=nop             
.L_14ad20:                      #        0x14ad20  0      OPC=<label>         
  subl $0x4, %esi               #  37    0x14ad20  3      OPC=subl_r32_imm8   
  subl $0x4, %edi               #  38    0x14ad23  3      OPC=subl_r32_imm8   
  movl %esi, %esi               #  39    0x14ad26  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx      #  40    0x14ad28  4      OPC=movl_r32_m32    
  movl %edi, %edi               #  41    0x14ad2c  2      OPC=movl_r32_r32    
  cmpl %edx, (%r15,%rdi,1)      #  42    0x14ad2e  4      OPC=cmpl_m32_r32    
  jne .L_14ad60                 #  43    0x14ad32  2      OPC=jne_label       
  cmpl %edi, %ecx               #  44    0x14ad34  2      OPC=cmpl_r32_r32    
  jb .L_14ad20                  #  45    0x14ad36  2      OPC=jb_label        
  nop                           #  46    0x14ad38  1      OPC=nop             
  nop                           #  47    0x14ad39  1      OPC=nop             
  nop                           #  48    0x14ad3a  1      OPC=nop             
  nop                           #  49    0x14ad3b  1      OPC=nop             
  nop                           #  50    0x14ad3c  1      OPC=nop             
  nop                           #  51    0x14ad3d  1      OPC=nop             
  nop                           #  52    0x14ad3e  1      OPC=nop             
  nop                           #  53    0x14ad3f  1      OPC=nop             
.L_14ad40:                      #        0x14ad40  0      OPC=<label>         
  popq %r11                     #  54    0x14ad40  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  55    0x14ad42  7      OPC=andl_r32_imm32  
  nop                           #  56    0x14ad49  1      OPC=nop             
  nop                           #  57    0x14ad4a  1      OPC=nop             
  nop                           #  58    0x14ad4b  1      OPC=nop             
  nop                           #  59    0x14ad4c  1      OPC=nop             
  addq %r15, %r11               #  60    0x14ad4d  3      OPC=addq_r64_r64    
  jmpq %r11                     #  61    0x14ad50  3      OPC=jmpq_r64        
  nop                           #  62    0x14ad53  1      OPC=nop             
  nop                           #  63    0x14ad54  1      OPC=nop             
  nop                           #  64    0x14ad55  1      OPC=nop             
  nop                           #  65    0x14ad56  1      OPC=nop             
  nop                           #  66    0x14ad57  1      OPC=nop             
  nop                           #  67    0x14ad58  1      OPC=nop             
  nop                           #  68    0x14ad59  1      OPC=nop             
  nop                           #  69    0x14ad5a  1      OPC=nop             
  nop                           #  70    0x14ad5b  1      OPC=nop             
  nop                           #  71    0x14ad5c  1      OPC=nop             
  nop                           #  72    0x14ad5d  1      OPC=nop             
  nop                           #  73    0x14ad5e  1      OPC=nop             
  nop                           #  74    0x14ad5f  1      OPC=nop             
  nop                           #  75    0x14ad60  1      OPC=nop             
  nop                           #  76    0x14ad61  1      OPC=nop             
  nop                           #  77    0x14ad62  1      OPC=nop             
  nop                           #  78    0x14ad63  1      OPC=nop             
  nop                           #  79    0x14ad64  1      OPC=nop             
  nop                           #  80    0x14ad65  1      OPC=nop             
  nop                           #  81    0x14ad66  1      OPC=nop             
.L_14ad60:                      #        0x14ad67  0      OPC=<label>         
  sbbl %eax, %eax               #  82    0x14ad67  2      OPC=sbbl_r32_r32    
  orl $0x1, %eax                #  83    0x14ad69  3      OPC=orl_r32_imm8    
  popq %r11                     #  84    0x14ad6c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  85    0x14ad6e  7      OPC=andl_r32_imm32  
  nop                           #  86    0x14ad75  1      OPC=nop             
  nop                           #  87    0x14ad76  1      OPC=nop             
  nop                           #  88    0x14ad77  1      OPC=nop             
  nop                           #  89    0x14ad78  1      OPC=nop             
  addq %r15, %r11               #  90    0x14ad79  3      OPC=addq_r64_r64    
  jmpq %r11                     #  91    0x14ad7c  3      OPC=jmpq_r64        
  nop                           #  92    0x14ad7f  1      OPC=nop             
  nop                           #  93    0x14ad80  1      OPC=nop             
  nop                           #  94    0x14ad81  1      OPC=nop             
  nop                           #  95    0x14ad82  1      OPC=nop             
  nop                           #  96    0x14ad83  1      OPC=nop             
  nop                           #  97    0x14ad84  1      OPC=nop             
  nop                           #  98    0x14ad85  1      OPC=nop             
  nop                           #  99    0x14ad86  1      OPC=nop             
  nop                           #  100   0x14ad87  1      OPC=nop             
  nop                           #  101   0x14ad88  1      OPC=nop             
  nop                           #  102   0x14ad89  1      OPC=nop             
  nop                           #  103   0x14ad8a  1      OPC=nop             
  nop                           #  104   0x14ad8b  1      OPC=nop             
  nop                           #  105   0x14ad8c  1      OPC=nop             
  nop                           #  106   0x14ad8d  1      OPC=nop             
                                                                              
.size __mcmp, .-__mcmp

