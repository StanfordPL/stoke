  .text
  .globl stringfile_close
  .type stringfile_close, @function

#! file-offset 0x6ad40
#! rip-offset  0x2ad40
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.stringfile_close:             #        0x2ad40  0      OPC=<label>         
  pushq %rbx                   #  1     0x2ad40  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0x2ad41  2      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  3     0x2ad43  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rbx,1), %ecx  #  4     0x2ad45  5      OPC=movl_r32_m32    
  testl %ecx, %ecx             #  5     0x2ad4a  2      OPC=testl_r32_r32   
  je .L_2ad60                  #  6     0x2ad4c  2      OPC=je_label        
  movl %ebx, %ebx              #  7     0x2ad4e  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edi     #  8     0x2ad50  4      OPC=movl_r32_m32    
  nop                          #  9     0x2ad54  1      OPC=nop             
  nop                          #  10    0x2ad55  1      OPC=nop             
  nop                          #  11    0x2ad56  1      OPC=nop             
  nop                          #  12    0x2ad57  1      OPC=nop             
  nop                          #  13    0x2ad58  1      OPC=nop             
  nop                          #  14    0x2ad59  1      OPC=nop             
  nop                          #  15    0x2ad5a  1      OPC=nop             
  callq .free                  #  16    0x2ad5b  5      OPC=callq_label     
.L_2ad60:                      #        0x2ad60  0      OPC=<label>         
  movl %ebx, %edi              #  17    0x2ad60  2      OPC=movl_r32_r32    
  nop                          #  18    0x2ad62  1      OPC=nop             
  nop                          #  19    0x2ad63  1      OPC=nop             
  nop                          #  20    0x2ad64  1      OPC=nop             
  nop                          #  21    0x2ad65  1      OPC=nop             
  nop                          #  22    0x2ad66  1      OPC=nop             
  nop                          #  23    0x2ad67  1      OPC=nop             
  nop                          #  24    0x2ad68  1      OPC=nop             
  nop                          #  25    0x2ad69  1      OPC=nop             
  nop                          #  26    0x2ad6a  1      OPC=nop             
  nop                          #  27    0x2ad6b  1      OPC=nop             
  nop                          #  28    0x2ad6c  1      OPC=nop             
  nop                          #  29    0x2ad6d  1      OPC=nop             
  nop                          #  30    0x2ad6e  1      OPC=nop             
  nop                          #  31    0x2ad6f  1      OPC=nop             
  nop                          #  32    0x2ad70  1      OPC=nop             
  nop                          #  33    0x2ad71  1      OPC=nop             
  nop                          #  34    0x2ad72  1      OPC=nop             
  nop                          #  35    0x2ad73  1      OPC=nop             
  nop                          #  36    0x2ad74  1      OPC=nop             
  nop                          #  37    0x2ad75  1      OPC=nop             
  nop                          #  38    0x2ad76  1      OPC=nop             
  nop                          #  39    0x2ad77  1      OPC=nop             
  nop                          #  40    0x2ad78  1      OPC=nop             
  nop                          #  41    0x2ad79  1      OPC=nop             
  nop                          #  42    0x2ad7a  1      OPC=nop             
  callq .free                  #  43    0x2ad7b  5      OPC=callq_label     
  xorl %eax, %eax              #  44    0x2ad80  2      OPC=xorl_r32_r32    
  popq %rbx                    #  45    0x2ad82  1      OPC=popq_r64_1      
  popq %r11                    #  46    0x2ad83  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  47    0x2ad85  7      OPC=andl_r32_imm32  
  nop                          #  48    0x2ad8c  1      OPC=nop             
  nop                          #  49    0x2ad8d  1      OPC=nop             
  nop                          #  50    0x2ad8e  1      OPC=nop             
  nop                          #  51    0x2ad8f  1      OPC=nop             
  addq %r15, %r11              #  52    0x2ad90  3      OPC=addq_r64_r64    
  jmpq %r11                    #  53    0x2ad93  3      OPC=jmpq_r64        
  xchgw %ax, %ax               #  54    0x2ad96  2      OPC=xchgw_ax_r16    
  nop                          #  55    0x2ad98  1      OPC=nop             
  nop                          #  56    0x2ad99  1      OPC=nop             
  nop                          #  57    0x2ad9a  1      OPC=nop             
  nop                          #  58    0x2ad9b  1      OPC=nop             
  nop                          #  59    0x2ad9c  1      OPC=nop             
  nop                          #  60    0x2ad9d  1      OPC=nop             
  nop                          #  61    0x2ad9e  1      OPC=nop             
  nop                          #  62    0x2ad9f  1      OPC=nop             
  nop                          #  63    0x2ada0  1      OPC=nop             
  nop                          #  64    0x2ada1  1      OPC=nop             
  nop                          #  65    0x2ada2  1      OPC=nop             
  nop                          #  66    0x2ada3  1      OPC=nop             
  nop                          #  67    0x2ada4  1      OPC=nop             
  nop                          #  68    0x2ada5  1      OPC=nop             
  nop                          #  69    0x2ada6  1      OPC=nop             
                                                                            
.size stringfile_close, .-stringfile_close

