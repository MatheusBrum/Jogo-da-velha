//
//  JogoDaVelhaViewController.h
//  JogoDaVelha
//
//  Created by Matheus Brum on 06/11/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JogoDaVelhaViewController : UIViewController {

	IBOutlet UIImage * oImg;
	IBOutlet UIImage * xImg;
	IBOutlet UIImageView *s1;
	IBOutlet UIImageView *s2;
	IBOutlet UIImageView *s3;
	IBOutlet UIImageView *s4;
	IBOutlet UIImageView *s5;
	IBOutlet UIImageView *s6;
	IBOutlet UIImageView *s7;
	IBOutlet UIImageView *s8;
	IBOutlet UIImageView *s9;
	UIImage * imagem;
	IBOutlet UIButton *botaoRecomecarO; 
	IBOutlet UIImageView * tela;
	IBOutlet UILabel * turno;
	NSInteger jogador;
	BOOL lugarUtilizado;
	NSInteger numeroDeJoagadas;
	UIAlertView *alerta;
	
}

@property (nonatomic,retain) UIImage *oImg;
@property (nonatomic,retain) UIImage *xImg;
@property (nonatomic,retain) UIImage *imagem;
@property (nonatomic,retain) UIButton *botaoRecomecarO;
@property (nonatomic,retain) UIImageView *tela;
@property (nonatomic,retain) UIImageView *s1;
@property (nonatomic,retain) UIImageView *s2;
@property (nonatomic,retain) UIImageView *s3;
@property (nonatomic,retain) UIImageView *s4;
@property (nonatomic,retain) UIImageView *s5;
@property (nonatomic,retain) UIImageView *s6;
@property (nonatomic,retain) UIImageView *s7;
@property (nonatomic,retain) UIImageView *s8;
@property (nonatomic,retain) UIImageView *s9;
@property (nonatomic,retain) UIAlertView *alerta;
@property (nonatomic,retain) UILabel * turno;
-(void)processar;
-(void) atualizarInformacao;
-(BOOL) checarGanhador;
-(IBAction)botaoRecomecarA;
-(void) recomecar;
-(IBAction)info;
-(IBAction)visitar;
@end