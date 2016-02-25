# colorsLabel
一个可以显示彩色字体的label


#使用说明
1导入头文件ColorsLabel.h                               
2创建label                                
3设置label.text                              
4设置文字颜色s                                   
(5设置颜色方向)
```
ColorsLabel *label = [ColorsLabel new];
    label.frame = CGRectMake(100, 100, 100, 100);
    label.text = @"测试文字测试文字测试文字测试文字测试文字";
    label.numberOfLines = 0;
    
    label.colors = @[[UIColor purpleColor],[UIColor blackColor], [UIColor orangeColor]];
    label.textDirection = TEXTDIRECTIONTOPTOBOTTOM;
    
    [self.view addSubview:label];
```
