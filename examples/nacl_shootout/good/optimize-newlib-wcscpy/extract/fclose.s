  .text
  .globl fclose
  .type fclose, @function

#! file-offset 0x159880
#! rip-offset  0x119880
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.fclose:                    #        0x119880  0      OPC=<label>       
  pushq %rbx                #  1     0x119880  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x119881  2      OPC=movl_r32_r32  
  nop                       #  3     0x119883  1      OPC=nop           
  nop                       #  4     0x119884  1      OPC=nop           
  nop                       #  5     0x119885  1      OPC=nop           
  nop                       #  6     0x119886  1      OPC=nop           
  nop                       #  7     0x119887  1      OPC=nop           
  nop                       #  8     0x119888  1      OPC=nop           
  nop                       #  9     0x119889  1      OPC=nop           
  nop                       #  10    0x11988a  1      OPC=nop           
  nop                       #  11    0x11988b  1      OPC=nop           
  nop                       #  12    0x11988c  1      OPC=nop           
  nop                       #  13    0x11988d  1      OPC=nop           
  nop                       #  14    0x11988e  1      OPC=nop           
  nop                       #  15    0x11988f  1      OPC=nop           
  nop                       #  16    0x119890  1      OPC=nop           
  nop                       #  17    0x119891  1      OPC=nop           
  nop                       #  18    0x119892  1      OPC=nop           
  nop                       #  19    0x119893  1      OPC=nop           
  nop                       #  20    0x119894  1      OPC=nop           
  nop                       #  21    0x119895  1      OPC=nop           
  nop                       #  22    0x119896  1      OPC=nop           
  nop                       #  23    0x119897  1      OPC=nop           
  nop                       #  24    0x119898  1      OPC=nop           
  nop                       #  25    0x119899  1      OPC=nop           
  nop                       #  26    0x11989a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x11989b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x1198a0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x1198a7  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x1198a9  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x1198aa  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x1198ac  4      OPC=movl_r32_m32  
  jmpq ._fclose_r           #  33    0x1198b0  5      OPC=jmpq_label_1  
  nop                       #  34    0x1198b5  1      OPC=nop           
  nop                       #  35    0x1198b6  1      OPC=nop           
  nop                       #  36    0x1198b7  1      OPC=nop           
  nop                       #  37    0x1198b8  1      OPC=nop           
  nop                       #  38    0x1198b9  1      OPC=nop           
  nop                       #  39    0x1198ba  1      OPC=nop           
  nop                       #  40    0x1198bb  1      OPC=nop           
  nop                       #  41    0x1198bc  1      OPC=nop           
  nop                       #  42    0x1198bd  1      OPC=nop           
  nop                       #  43    0x1198be  1      OPC=nop           
  nop                       #  44    0x1198bf  1      OPC=nop           
                                                                        
.size fclose, .-fclose

