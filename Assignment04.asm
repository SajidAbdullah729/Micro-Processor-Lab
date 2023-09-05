HH SEGMENT PARA PUBLIC 'CODE'
CC DB 0 

ASSUME CS:HH
ORG 1000H

START PROC FAR
      
    MOV AL,80H
    OUT 1FH,AL
     
    
    
    MAINFUN:
    
    
        MOV DX,2000H
        MOV AL,8
        OUT DX,AL
        ;temp delay 
        MOV CX,64
        FOR41: LOOP FOR41  
        MOV DX,2001H
        MOV AL,4
        OUT DX,AL  
        MOV CX,64
        FOR42: LOOP FOR42 
        MOV DX,2002H
        MOV AL,2
        OUT DX,AL 
        MOV CX,64
        FOR77: LOOP FOR77  
        MOV DX,2003H
        MOV AL,1
        OUT DX,AL    
        MOV CX,64
        FOR43: LOOP FOR43 
        MOV DX,2070H
        MOV AL,12
        OUT DX,AL  
        MOV CX,64
        FOR44:LOOP FOR44
        MOV DX,2030H
        MOV AL,00010000b
        OUT DX,AL
        MOV DX,2031H
        MOV AL,00010000b
        OUT DX,AL
        MOV CX,64
        FOR45:LOOP FOR45
        ;DELAY CODE
        MOV CX, 128
        FOR1: LOOP FOR1
                
        
        
        
        MOV DX,2004H
        MOV AL,02
        OUT DX,AL 
        MOV CX,64
        FOR46: LOOP FOR46
        MOV DX,2005H
        MOV AL,04
        OUT DX,AL 
        MOV CX,64
        FOR47: LOOP FOR47 
        MOV DX,2006H
        MOV AL,08
        OUT DX,AL 
        MOV CX,64
        FOR48: LOOP FOR48 
        MOV DX,2030H
        MOV AL,01010000b
        OUT DX,AL    
        MOV DX,2031H
        MOV AL,00110000b
        OUT DX,AL    
        MOV CX, 128
        FOR2: LOOP FOR2                
        
        
        
        
                
        MOV DX,2005H
        MOV AL,20
        OUT DX,AL
        MOV CX,64
        FOR49: LOOP FOR49 
        MOV DX,2004H
        MOV AL,34
        OUT DX,AL
        MOV CX,128
        FOR50: LOOP FOR50
        MOV DX,2031H
        MOV AL,00110001b
        OUT DX,AL  
        MOV CX,128
        FOR51: LOOP FOR51
        MOV CX, 128        
        FOR3: LOOP FOR3

        
        
        
                
        MOV DX,2003H
        MOV AL,33
        OUT DX,AL 
        MOV CX,64
        FOR52: LOOP FOR52  
        MOV DX,2002H
        MOV AL,34
        OUT DX,AL
        MOV CX,128
        FOR53: LOOP FOR53
        MOV DX,2031H
        MOV AL,00110011b
        OUT DX,AL  
        MOV CX,128
        FOR54: LOOP FOR54
        MOV CX, 128
        FOR4: LOOP FOR4
      
               
        
                
        MOV DX,2001H
        MOV AL,20
        OUT DX,AL
        MOV CX,64
        FOR55: LOOP FOR55
        MOV DX,2031H
        MOV AL,01110011b
        OUT DX,AL 
        MOV CX,64
        FOR56: LOOP FOR56    
        MOV CX, 128
        FOR5: LOOP FOR5
        
        
                 
        
        MOV DX,2070H
        MOV AL,0
        OUT DX,AL 
        MOV DX,2001H
        MOV AL,4  
        OUT DX,AL 
        MOV CX,64
        FOR57:LOOP FOR57
        MOV DX,2002H
        MOV AL,2    
        OUT DX,AL
        MOV CX,64
        FOR58:LOOP FOR58
        MOV DX,2031H
        MOV AL,00110011b 
        OUT DX,AL
        MOV CX, 128
        FOR6: LOOP FOR6
       
        
        
    
        MOV DX,2003H
        MOV AL,1
        OUT DX,AL         
        MOV CX,64
        FOR59:LOOP FOR59        
        MOV DX,2004H
        MOV AL,2
        OUT DX,AL
        MOV CX,64
        FOR60:LOOP FOR60
        MOV DX,2031H
        MOV AL,00110001b
        OUT DX,AL  
        MOV CX, 128        
        FOR7: LOOP FOR7                
        
        
        
        
        MOV DX,2005H
        MOV AL,4
        OUT DX,AL
        MOV CX,64
        FOR61:LOOP FOR61
        MOV DX,2006H
        MOV AL,0
        OUT DX,AL 
        MOV CX,64
        FOR62:LOOP FOR62
        MOV DX,2031H
        MOV AL,00110000b
        OUT DX,AL
        MOV CX,64
        FOR63:LOOP FOR63
        MOV CX, 128
        FOR8: LOOP FOR8
        
        

        
        MOV DX,2005H
        MOV AL,0
        OUT DX,AL
        MOV CX,64
        FOR64:LOOP FOR64
        MOV DX,2004H
        MOV AL,0
        OUT DX,AL
        MOV CX,64
        FOR65:LOOP FOR65 
        MOV DX,2003H
        MOV AL,0
        OUT DX,AL
        MOV CX,64
        FOR66:LOOP FOR66
        MOV DX,2030H
        MOV AL,00010000b
        OUT DX,AL
        MOV DX,2031H
        MOV AL,00010000b
        OUT DX,AL   
        MOV CX,64
        FOR67:LOOP FOR67 
        MOV CX, 128
        FOR9: LOOP FOR9
       
   
                 
                 
                 
        MOV DX,2002H
        MOV AL,0
        OUT DX,AL
        MOV CX,64
        FOR68:LOOP FOR68
        MOV DX,2001H
        MOV AL,0
        OUT DX,AL         
        MOV CX,64
        FOR69:LOOP FOR69        
        MOV DX,2000H
        MOV AL,0
        OUT DX,AL 
        MOV CX,64
        FOR70: LOOP FOR70        
        MOV DX,2030H
        MOV AL,0
        OUT DX,AL
        MOV CX,64
        FOR71:LOOP FOR71        
        MOV DX,2031H
        MOV AL,0
        OUT DX,AL
        MOV CX,64
        FOR72:LOOP FOR72
                
        CMP CC,4
        JE ENDCODE
        INC CC
        
        JMP MAINFUN 
        
 ENDCODE:
HH ENDS
START ENDP            
   
        
        