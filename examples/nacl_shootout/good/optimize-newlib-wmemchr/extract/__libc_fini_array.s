  .text
  .globl __libc_fini_array
  .type __libc_fini_array, @function

#! file-offset 0x15ad80
#! rip-offset  0x11ad80
#! capacity    160 bytes

# Text                             #  Line  RIP       Bytes  Opcode              
.__libc_fini_array:                #        0x11ad80  0      OPC=<label>         
  pushq %r12                       #  1     0x11ad80  2      OPC=pushq_r64_1     
  pushq %rbx                       #  2     0x11ad82  1      OPC=pushq_r64_1     
  movl $0x10070498, %ebx           #  3     0x11ad83  5      OPC=movl_r32_imm32  
  subl $0x10070498, %ebx           #  4     0x11ad88  6      OPC=subl_r32_imm32  
  sarl $0x2, %ebx                  #  5     0x11ad8e  3      OPC=sarl_r32_imm8   
  subl $0x8, %esp                  #  6     0x11ad91  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  7     0x11ad94  3      OPC=addq_r64_r64    
  testl %ebx, %ebx                 #  8     0x11ad97  2      OPC=testl_r32_r32   
  je .L_11ae00                     #  9     0x11ad99  2      OPC=je_label        
  nop                              #  10    0x11ad9b  1      OPC=nop             
  nop                              #  11    0x11ad9c  1      OPC=nop             
  nop                              #  12    0x11ad9d  1      OPC=nop             
  nop                              #  13    0x11ad9e  1      OPC=nop             
  nop                              #  14    0x11ad9f  1      OPC=nop             
  leal 0x10070494(,%rbx,4), %r12d  #  15    0x11ada0  8      OPC=leal_r32_m16    
  nop                              #  16    0x11ada8  1      OPC=nop             
  nop                              #  17    0x11ada9  1      OPC=nop             
  nop                              #  18    0x11adaa  1      OPC=nop             
  nop                              #  19    0x11adab  1      OPC=nop             
  nop                              #  20    0x11adac  1      OPC=nop             
  nop                              #  21    0x11adad  1      OPC=nop             
  nop                              #  22    0x11adae  1      OPC=nop             
  nop                              #  23    0x11adaf  1      OPC=nop             
  nop                              #  24    0x11adb0  1      OPC=nop             
  nop                              #  25    0x11adb1  1      OPC=nop             
  nop                              #  26    0x11adb2  1      OPC=nop             
  nop                              #  27    0x11adb3  1      OPC=nop             
  nop                              #  28    0x11adb4  1      OPC=nop             
  nop                              #  29    0x11adb5  1      OPC=nop             
  nop                              #  30    0x11adb6  1      OPC=nop             
  nop                              #  31    0x11adb7  1      OPC=nop             
  nop                              #  32    0x11adb8  1      OPC=nop             
  nop                              #  33    0x11adb9  1      OPC=nop             
  nop                              #  34    0x11adba  1      OPC=nop             
  nop                              #  35    0x11adbb  1      OPC=nop             
  nop                              #  36    0x11adbc  1      OPC=nop             
  nop                              #  37    0x11adbd  1      OPC=nop             
  nop                              #  38    0x11adbe  1      OPC=nop             
  nop                              #  39    0x11adbf  1      OPC=nop             
.L_11adc0:                         #        0x11adc0  0      OPC=<label>         
  movl %r12d, %eax                 #  40    0x11adc0  3      OPC=movl_r32_r32    
  subl $0x1, %ebx                  #  41    0x11adc3  3      OPC=subl_r32_imm8   
  subl $0x4, %r12d                 #  42    0x11adc6  4      OPC=subl_r32_imm8   
  movl %eax, %eax                  #  43    0x11adca  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax         #  44    0x11adcc  4      OPC=movl_r32_m32    
  nop                              #  45    0x11add0  1      OPC=nop             
  nop                              #  46    0x11add1  1      OPC=nop             
  nop                              #  47    0x11add2  1      OPC=nop             
  nop                              #  48    0x11add3  1      OPC=nop             
  nop                              #  49    0x11add4  1      OPC=nop             
  nop                              #  50    0x11add5  1      OPC=nop             
  nop                              #  51    0x11add6  1      OPC=nop             
  nop                              #  52    0x11add7  1      OPC=nop             
  andl $0xffffffe0, %eax           #  53    0x11add8  6      OPC=andl_r32_imm32  
  nop                              #  54    0x11adde  1      OPC=nop             
  nop                              #  55    0x11addf  1      OPC=nop             
  nop                              #  56    0x11ade0  1      OPC=nop             
  addq %r15, %rax                  #  57    0x11ade1  3      OPC=addq_r64_r64    
  callq %rax                       #  58    0x11ade4  2      OPC=callq_r64       
  testl %ebx, %ebx                 #  59    0x11ade6  2      OPC=testl_r32_r32   
  jne .L_11adc0                    #  60    0x11ade8  2      OPC=jne_label       
  nop                              #  61    0x11adea  1      OPC=nop             
  nop                              #  62    0x11adeb  1      OPC=nop             
  nop                              #  63    0x11adec  1      OPC=nop             
  nop                              #  64    0x11aded  1      OPC=nop             
  nop                              #  65    0x11adee  1      OPC=nop             
  nop                              #  66    0x11adef  1      OPC=nop             
  nop                              #  67    0x11adf0  1      OPC=nop             
  nop                              #  68    0x11adf1  1      OPC=nop             
  nop                              #  69    0x11adf2  1      OPC=nop             
  nop                              #  70    0x11adf3  1      OPC=nop             
  nop                              #  71    0x11adf4  1      OPC=nop             
  nop                              #  72    0x11adf5  1      OPC=nop             
  nop                              #  73    0x11adf6  1      OPC=nop             
  nop                              #  74    0x11adf7  1      OPC=nop             
  nop                              #  75    0x11adf8  1      OPC=nop             
  nop                              #  76    0x11adf9  1      OPC=nop             
  nop                              #  77    0x11adfa  1      OPC=nop             
  nop                              #  78    0x11adfb  1      OPC=nop             
  nop                              #  79    0x11adfc  1      OPC=nop             
  nop                              #  80    0x11adfd  1      OPC=nop             
  nop                              #  81    0x11adfe  1      OPC=nop             
  nop                              #  82    0x11adff  1      OPC=nop             
  nop                              #  83    0x11ae00  1      OPC=nop             
  nop                              #  84    0x11ae01  1      OPC=nop             
  nop                              #  85    0x11ae02  1      OPC=nop             
  nop                              #  86    0x11ae03  1      OPC=nop             
  nop                              #  87    0x11ae04  1      OPC=nop             
  nop                              #  88    0x11ae05  1      OPC=nop             
.L_11ae00:                         #        0x11ae06  0      OPC=<label>         
  addl $0x8, %esp                  #  89    0x11ae06  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  90    0x11ae09  3      OPC=addq_r64_r64    
  popq %rbx                        #  91    0x11ae0c  1      OPC=popq_r64_1      
  popq %r12                        #  92    0x11ae0d  2      OPC=popq_r64_1      
  jmpq ._fini                      #  93    0x11ae0f  5      OPC=jmpq_label_1    
  nop                              #  94    0x11ae14  1      OPC=nop             
  nop                              #  95    0x11ae15  1      OPC=nop             
  nop                              #  96    0x11ae16  1      OPC=nop             
  nop                              #  97    0x11ae17  1      OPC=nop             
  nop                              #  98    0x11ae18  1      OPC=nop             
  nop                              #  99    0x11ae19  1      OPC=nop             
  nop                              #  100   0x11ae1a  1      OPC=nop             
  nop                              #  101   0x11ae1b  1      OPC=nop             
  nop                              #  102   0x11ae1c  1      OPC=nop             
  nop                              #  103   0x11ae1d  1      OPC=nop             
  nop                              #  104   0x11ae1e  1      OPC=nop             
  nop                              #  105   0x11ae1f  1      OPC=nop             
  nop                              #  106   0x11ae20  1      OPC=nop             
  nop                              #  107   0x11ae21  1      OPC=nop             
  nop                              #  108   0x11ae22  1      OPC=nop             
  nop                              #  109   0x11ae23  1      OPC=nop             
  nop                              #  110   0x11ae24  1      OPC=nop             
  nop                              #  111   0x11ae25  1      OPC=nop             
                                                                                 
.size __libc_fini_array, .-__libc_fini_array

