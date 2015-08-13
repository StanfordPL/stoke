  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEEC2EP7__sFILE
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEEC2EP7__sFILE, @function

#! file-offset 0xdbe40
#! rip-offset  0x9be40
#! capacity    192 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEEC2EP7__sFILE:  #        0x9be40  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                              #  1     0x9be40  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                     #  2     0x9be45  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                               #  3     0x9be47  5      OPC=movq_m64_r64    
  leal 0x1c(%rbx), %edi                                               #  4     0x9be4c  3      OPC=leal_r32_m16    
  subl $0x18, %esp                                                    #  5     0x9be4f  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                     #  6     0x9be52  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                                    #  7     0x9be55  3      OPC=movl_r32_r32    
  nop                                                                 #  8     0x9be58  1      OPC=nop             
  nop                                                                 #  9     0x9be59  1      OPC=nop             
  nop                                                                 #  10    0x9be5a  1      OPC=nop             
  nop                                                                 #  11    0x9be5b  1      OPC=nop             
  nop                                                                 #  12    0x9be5c  1      OPC=nop             
  nop                                                                 #  13    0x9be5d  1      OPC=nop             
  nop                                                                 #  14    0x9be5e  1      OPC=nop             
  nop                                                                 #  15    0x9be5f  1      OPC=nop             
  movl %ebx, %ebx                                                     #  16    0x9be60  2      OPC=movl_r32_r32    
  movl $0x1003b9e8, (%r15,%rbx,1)                                     #  17    0x9be62  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                     #  18    0x9be6a  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)                                         #  19    0x9be6c  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                     #  20    0x9be75  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                         #  21    0x9be77  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                     #  22    0x9be80  2      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%rbx,1)                                         #  23    0x9be82  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                     #  24    0x9be8b  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rbx,1)                                        #  25    0x9be8d  9      OPC=movl_m32_imm32  
  nop                                                                 #  26    0x9be96  1      OPC=nop             
  nop                                                                 #  27    0x9be97  1      OPC=nop             
  nop                                                                 #  28    0x9be98  1      OPC=nop             
  nop                                                                 #  29    0x9be99  1      OPC=nop             
  nop                                                                 #  30    0x9be9a  1      OPC=nop             
  nop                                                                 #  31    0x9be9b  1      OPC=nop             
  nop                                                                 #  32    0x9be9c  1      OPC=nop             
  nop                                                                 #  33    0x9be9d  1      OPC=nop             
  nop                                                                 #  34    0x9be9e  1      OPC=nop             
  nop                                                                 #  35    0x9be9f  1      OPC=nop             
  movl %ebx, %ebx                                                     #  36    0x9bea0  2      OPC=movl_r32_r32    
  movl $0x0, 0x14(%r15,%rbx,1)                                        #  37    0x9bea2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                     #  38    0x9beab  2      OPC=movl_r32_r32    
  movl $0x0, 0x18(%r15,%rbx,1)                                        #  39    0x9bead  9      OPC=movl_m32_imm32  
  nop                                                                 #  40    0x9beb6  1      OPC=nop             
  nop                                                                 #  41    0x9beb7  1      OPC=nop             
  nop                                                                 #  42    0x9beb8  1      OPC=nop             
  nop                                                                 #  43    0x9beb9  1      OPC=nop             
  nop                                                                 #  44    0x9beba  1      OPC=nop             
  callq ._ZNSt6localeC1Ev                                             #  45    0x9bebb  5      OPC=callq_label     
  movl %ebx, %ebx                                                     #  46    0x9bec0  2      OPC=movl_r32_r32    
  movl %r12d, 0x20(%r15,%rbx,1)                                       #  47    0x9bec2  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                                                     #  48    0x9bec7  2      OPC=movl_r32_r32    
  movl $0x1003b7a8, (%r15,%rbx,1)                                     #  49    0x9bec9  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                     #  50    0x9bed1  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  51    0x9bed3  9      OPC=movl_m32_imm32  
  nop                                                                 #  52    0x9bedc  1      OPC=nop             
  nop                                                                 #  53    0x9bedd  1      OPC=nop             
  nop                                                                 #  54    0x9bede  1      OPC=nop             
  nop                                                                 #  55    0x9bedf  1      OPC=nop             
  movq 0x10(%rsp), %r12                                               #  56    0x9bee0  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                #  57    0x9bee5  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                    #  58    0x9beea  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                     #  59    0x9beed  3      OPC=addq_r64_r64    
  popq %r11                                                           #  60    0x9bef0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  61    0x9bef2  7      OPC=andl_r32_imm32  
  nop                                                                 #  62    0x9bef9  1      OPC=nop             
  nop                                                                 #  63    0x9befa  1      OPC=nop             
  nop                                                                 #  64    0x9befb  1      OPC=nop             
  nop                                                                 #  65    0x9befc  1      OPC=nop             
  addq %r15, %r11                                                     #  66    0x9befd  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  67    0x9bf00  3      OPC=jmpq_r64        
  nop                                                                 #  68    0x9bf03  1      OPC=nop             
  nop                                                                 #  69    0x9bf04  1      OPC=nop             
  nop                                                                 #  70    0x9bf05  1      OPC=nop             
  nop                                                                 #  71    0x9bf06  1      OPC=nop             
                                                                                                                   
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEEC2EP7__sFILE, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEEC2EP7__sFILE

