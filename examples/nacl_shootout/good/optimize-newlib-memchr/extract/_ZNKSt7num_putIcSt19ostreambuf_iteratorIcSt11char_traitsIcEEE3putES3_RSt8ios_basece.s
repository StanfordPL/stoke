  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basece
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basece, @function

#! file-offset 0xb8800
#! rip-offset  0x78800
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basece:  #        0x78800  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x78800  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x78802  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x78805  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x78808  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x7880a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x7880c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x78810  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x78813  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                                                         #  9     0x78815  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x7881a  1      OPC=nop             
  nop                                                                                  #  11    0x7881b  1      OPC=nop             
  nop                                                                                  #  12    0x7881c  1      OPC=nop             
  nop                                                                                  #  13    0x7881d  1      OPC=nop             
  nop                                                                                  #  14    0x7881e  1      OPC=nop             
  nop                                                                                  #  15    0x7881f  1      OPC=nop             
  nop                                                                                  #  16    0x78820  1      OPC=nop             
  nop                                                                                  #  17    0x78821  1      OPC=nop             
  nop                                                                                  #  18    0x78822  1      OPC=nop             
  nop                                                                                  #  19    0x78823  1      OPC=nop             
  nop                                                                                  #  20    0x78824  1      OPC=nop             
  nop                                                                                  #  21    0x78825  1      OPC=nop             
  nop                                                                                  #  22    0x78826  1      OPC=nop             
  nop                                                                                  #  23    0x78827  1      OPC=nop             
  nop                                                                                  #  24    0x78828  1      OPC=nop             
  nop                                                                                  #  25    0x78829  1      OPC=nop             
  nop                                                                                  #  26    0x7882a  1      OPC=nop             
  nop                                                                                  #  27    0x7882b  1      OPC=nop             
  nop                                                                                  #  28    0x7882c  1      OPC=nop             
  nop                                                                                  #  29    0x7882d  1      OPC=nop             
  nop                                                                                  #  30    0x7882e  1      OPC=nop             
  nop                                                                                  #  31    0x7882f  1      OPC=nop             
  nop                                                                                  #  32    0x78830  1      OPC=nop             
  nop                                                                                  #  33    0x78831  1      OPC=nop             
  nop                                                                                  #  34    0x78832  1      OPC=nop             
  nop                                                                                  #  35    0x78833  1      OPC=nop             
  nop                                                                                  #  36    0x78834  1      OPC=nop             
  nop                                                                                  #  37    0x78835  1      OPC=nop             
  nop                                                                                  #  38    0x78836  1      OPC=nop             
  nop                                                                                  #  39    0x78837  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x78838  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x7883e  1      OPC=nop             
  nop                                                                                  #  42    0x7883f  1      OPC=nop             
  nop                                                                                  #  43    0x78840  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x78841  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x78844  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x78846  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x78849  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x7884c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x7884e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x78855  1      OPC=nop             
  nop                                                                                  #  51    0x78856  1      OPC=nop             
  nop                                                                                  #  52    0x78857  1      OPC=nop             
  nop                                                                                  #  53    0x78858  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x78859  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x7885c  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x7885f  1      OPC=nop             
  nop                                                                                  #  57    0x78860  1      OPC=nop             
  nop                                                                                  #  58    0x78861  1      OPC=nop             
  nop                                                                                  #  59    0x78862  1      OPC=nop             
  nop                                                                                  #  60    0x78863  1      OPC=nop             
  nop                                                                                  #  61    0x78864  1      OPC=nop             
  nop                                                                                  #  62    0x78865  1      OPC=nop             
  nop                                                                                  #  63    0x78866  1      OPC=nop             
  nop                                                                                  #  64    0x78867  1      OPC=nop             
  nop                                                                                  #  65    0x78868  1      OPC=nop             
  nop                                                                                  #  66    0x78869  1      OPC=nop             
  nop                                                                                  #  67    0x7886a  1      OPC=nop             
  nop                                                                                  #  68    0x7886b  1      OPC=nop             
  nop                                                                                  #  69    0x7886c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basece, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basece

