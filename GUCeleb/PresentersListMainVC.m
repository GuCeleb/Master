//
//  PresentersListMainVC.m
//  GUCeleb
//
//  Created by Yousef Masluf on 12/10/15.
//  Copyright © 2015 Gannon.edu. All rights reserved.
//

#import "PresentersListMainVC.h"

@interface PresentersListMainVC ()

@end

@implementation PresentersListMainVC

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PresenterCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Presenter *p = (Presenter *) [items objectAtIndex:indexPath.row];
    cell.lblName.text = p.Name;
    cell.lblTopic.text = [@"Topic: " stringByAppendingString:p.Topic];
    cell.lblLocation.text =[@"Location: " stringByAppendingString:p.Location];
    cell.lblDateTime.text =[[[@"on " stringByAppendingString:p.Date] stringByAppendingString:@" at "] stringByAppendingString:p.Time];
    cell.imgPhoto.image = p.image;
    cell.lblRating.layer.borderColor = [cell.lblRating.textColor CGColor];
    cell.lblRating.layer.cornerRadius = 10;
    cell.lblRating.layer.borderWidth = 2;
    if([p.rattings objectForKey:self.currentJudge.Name] == nil){
        cell.lblRating.text = @"Not Rated";
    }else{
        
        /////////////////////////////////// Calculate accumulative Score ///////////////////////////
        PlatformScoring *score1 = [((NSArray *)[p.rattings objectForKey:self.currentJudge.Name]) objectAtIndex:0];
        PosterScoring *score2 = [((NSArray *)[p.rattings objectForKey:self.currentJudge.Name]) objectAtIndex:1];
        
        int totalScore = [score1 getTotal] + [score2 getTotal];
        int earnedScore = [score1 getScore] + [score2 getScore];
        
        cell.lblRating.text = [[NSString alloc] initWithFormat:@"%d/%d", earnedScore, totalScore];
    }
    return cell;
}
@end
