  .text
  .globl run_memcpy
  .type run_memcpy, @function

#! file-offset 0x69720
#! rip-offset  0x29720
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode    
.run_memcpy:                  #        0x29720  0      OPC=0     
  movl %r11d, %edx  #SIZE=3
  movl %r8d, %eax   #SIZE=3
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  addl $0x1, %r10d            #  142   0x29767  4      OPC=65    
.L_29740:                     #        0x29746  0      OPC=0     
  movl %edx, %ecx             #  130   0x29746  2      OPC=1157   ## edx -> pointer to destination
  movl %eax, %esi             #  131   0x29748  2      OPC=1157   ## eax -> pointer to source
  movl %esi, %esi             #  132   0x2974a  2      OPC=1157   ## r15 -> memory base
  movzbl (%r15,%rsi,1), %esi  #  133   0x2974c  5      OPC=1302   ## r10d -> number of times we've run so far (ebx the max)
  movl %ecx, %ecx             #  134   0x29751  2      OPC=1157   ## edi -> pointer to end of source
  movb %sil, (%r15,%rcx,1)    #  135   0x29753  4      OPC=1141  
  addl $0x1, %eax             #  136   0x29757  3      OPC=65    
  addl $0x1, %edx             #  137   0x2975a  3      OPC=65    
  cmpl %edi, %eax             #  138   0x2975d  2      OPC=472   
  jne .L_29740                #  139   0x2975f  6      OPC=963   
  retq
                                                                 
.size run_memcpy, .-run_memcpy

