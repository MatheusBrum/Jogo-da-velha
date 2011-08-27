//
//  JogoDaVelhaViewController.m
//  JogoDaVelha
//
//  Created by Matheus Brum on 06/11/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "JogoDaVelhaViewController.h"

@implementation JogoDaVelhaViewController
@synthesize s1,s2,s3,s4,s5,s6,s7,s8,s9;
@synthesize oImg,xImg,imagem,turno,tela;
@synthesize botaoRecomecarO, alerta;

-(IBAction)info{
	UIAlertView *alerta2 = [[UIAlertView alloc]initWithTitle:@"Sobre o programa" message:@"Programa criado por Matheus Brum, membro do blog AppleManiacos.com e distribuido grátis por código aberto" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
	[alerta2 show];
	[alerta2 release];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    }
    return self;
}

- (void)viewDidLoad {
	oImg = [UIImage imageNamed:@"O.png"];
	xImg = [UIImage imageNamed:@"X.png"];
	
	jogador = 1;
	turno.text =@"X pode começar";
	
	numeroDeJoagadas = 0;
	
	
    [super viewDidLoad];
}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	
	
	switch (jogador){
		case 1:
			imagem = xImg;
			break;
		case 2:
			imagem = oImg;
			break;
	}
	
	UITouch *touch = [[event allTouches] anyObject];
	lugarUtilizado = NO;
	
    if(CGRectContainsPoint([s1 frame], [touch locationInView:self.view]) & (s1.image == NULL)){
		lugarUtilizado = YES;
		s1.image = imagem;
	}
    if(CGRectContainsPoint([s2 frame], [touch locationInView:self.view]) & (s2.image == NULL)){
		lugarUtilizado = YES;
		s2.image = imagem;
	}
	if(CGRectContainsPoint([s3 frame], [touch locationInView:self.view]) & (s3.image == NULL)){
		lugarUtilizado = YES;
		s3.image = imagem;
	}
	if(CGRectContainsPoint([s4 frame], [touch locationInView:self.view]) & (s4.image == NULL)){
		lugarUtilizado = YES;
		s4.image = imagem;
	}
	if(CGRectContainsPoint([s5 frame], [touch locationInView:self.view]) & (s5.image == NULL)){
		lugarUtilizado = YES;
		s5.image = imagem;
	}
	if(CGRectContainsPoint([s6 frame], [touch locationInView:self.view]) & (s6.image == NULL)){
		lugarUtilizado = YES;
		s6.image = imagem;
	}
	if(CGRectContainsPoint([s7 frame], [touch locationInView:self.view]) & (s7.image == NULL)){
		lugarUtilizado = YES;
		s7.image = imagem;
	}
	if(CGRectContainsPoint([s8 frame], [touch locationInView:self.view]) & (s8.image == NULL)){
		lugarUtilizado = YES;
		s8.image = imagem;
	}
	if(CGRectContainsPoint([s9 frame], [touch locationInView:self.view]) & (s9.image == NULL)){
		lugarUtilizado = YES;
		s9.image = imagem;
	}
	[self processar];
	
	if (lugarUtilizado){
		[self atualizarInformacao];
    }
	
    
	
	
}

-(void)processar{
	if([self checarGanhador]){
		if(jogador==1){
			alerta = [[UIAlertView alloc] initWithTitle:@"Tivemos um ganhador!" message:@"Jogador X gannhou!" delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:nil];
			[alerta show];
			
			[self recomecar];
		}else if(jogador==2){
			alerta = [[UIAlertView alloc] initWithTitle:@"Tivemos um ganhador!" message:@"Jogador O gannhou!" delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:nil];
			[alerta show];
			
			[self recomecar];
		}
		
		if(numeroDeJoagadas == 9){
			alerta = [[UIAlertView alloc] initWithTitle:@"Sem ganhadores" message:@"Desculpa, deu velha!" delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:nil];
			[alerta show];
			
			[self recomecar];
		}
	}
}



-(BOOL) checarGanhador{
	
	
	if((s1.image == s2.image) & (s2.image == s3.image) & (s1.image != NULL)) { return YES; }	if((s4.image == s5.image) & (s5.image == s6.image) & (s4.image != NULL)) { return YES; }
	if((s7.image == s8.image) & (s8.image == s9.image) & (s7.image != NULL)) { return YES; }
	
	if((s1.image == s4.image) & (s4.image == s7.image) & (s1.image != NULL)) { return YES; }
	if((s2.image == s5.image) & (s5.image == s8.image) & (s2.image != NULL)) { return YES; }
	if((s3.image == s6.image) & (s6.image == s9.image) & (s3.image != NULL)) { return YES; }	
	
	if((s1.image == s5.image) & (s5.image == s9.image) & (s1.image != NULL)) { return YES; }
	if((s3.image == s5.image) & (s5.image == s7.image) & (s3.image != NULL)) { return YES; }
	
	
	return NO;
}

-(void)displayWinner{
	if([self checarGanhador] == YES){
		if(jogador==1){
			turno.text =@"X é o ganhador!";
        } else {
			turno.text =@"O é o ganhador!";
		}
	}
	
}

-(IBAction) botaoRecomecarA{
	[self recomecar];
	
}
-(IBAction)visitar{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.applemaniacos.com"]];

}


-(void) recomecar{
	
	s1.image = NULL;
	s2.image = NULL;
	s3.image = NULL;
	s4.image = NULL;
	s5.image = NULL;
	s6.image = NULL;
	s7.image = NULL;
	s8.image = NULL;
	s9.image = NULL;
	
	jogador= 1;
	turno.text = @"X pode ir";
	
	numeroDeJoagadas = 0;
	
	
}

- (void) atualizarInformacao{
	
	
	numeroDeJoagadas++;
	if(numeroDeJoagadas == 9){
		[self recomecar];
	}
	
	
	if(jogador == 1){
		jogador = 2; 
		turno.text = @"O pode ir"; 		
	} else {
		jogador = 1;
		turno.text =@"X pode ir";
		
	}
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; 
}


- (void)dealloc {
	[s1 release];
	[s2 release];
	[s3 release];
	[s4 release];
	[s5 release];
	[s6 release];
	[s7 release];
	[s8 release];
	[s9 release];
	[imagem release];
	[botaoRecomecarO release];
	[tela release];
	[oImg release];
	[xImg release];
	[turno release];
	[alerta release];
    [super dealloc];
}

@end
