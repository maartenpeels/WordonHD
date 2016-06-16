.class public final Lcom/chartboost/sdk/impl/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bi$3;,
        Lcom/chartboost/sdk/impl/bi$a;,
        Lcom/chartboost/sdk/impl/bi$b;
    }
.end annotation


# direct methods
.method public static a(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/bi;->b(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-static {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/bi;->c(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V

    return-void
.end method

.method public static a(ZLandroid/view/View;)V
    .locals 2

    .prologue
    .line 256
    const-wide/16 v0, 0xfa

    invoke-static {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/bi;->a(ZLandroid/view/View;J)V

    .line 257
    return-void
.end method

.method public static a(ZLandroid/view/View;J)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 262
    if-eqz p0, :cond_0

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    if-eqz p0, :cond_2

    move v1, v2

    :goto_0
    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 265
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 268
    return-void

    :cond_2
    move v1, v3

    .line 264
    goto :goto_0
.end method

.method public static b(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/bi;->c(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V

    .line 58
    return-void
.end method

.method private static b(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V
    .locals 7

    .prologue
    const-string v2, "AnimationManager"

    .line 63
    sget-object v0, Lcom/chartboost/sdk/impl/bi$b;->g:Lcom/chartboost/sdk/impl/bi$b;

    if-ne p0, v0, :cond_1

    .line 64
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/chartboost/sdk/impl/bi$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bq;

    if-nez v0, :cond_3

    .line 70
    :cond_2
    const-string v0, "AnimationManager"

    const-string v0, "Transition of impression canceled due to lack of container"

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->f()Landroid/view/View;

    move-result-object v1

    .line 74
    if-nez v1, :cond_4

    .line 75
    invoke-static {}, Lcom/chartboost/sdk/e;->a()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 77
    const-string v0, "AnimationManager"

    const-string v0, "Transition of impression canceled due to lack of view"

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 81
    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/chartboost/sdk/impl/bi$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bi$1;-><init>(Landroid/view/View;Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private static c(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V
    .locals 12

    .prologue
    .line 94
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 95
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 98
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bq;

    if-nez v0, :cond_2

    .line 99
    :cond_0
    const-string p0, "AnimationManager"

    const-string p1, "Transition of impression canceled due to lack of container"

    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->f()Landroid/view/View;

    move-result-object v0

    .line 103
    if-nez v0, :cond_3

    .line 104
    const-string p0, "AnimationManager"

    const-string p1, "Transition of impression canceled due to lack of view"

    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v2, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-eq v1, v2, :cond_4

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v2, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    if-ne v1, v2, :cond_13

    .line 110
    :cond_4
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bq;

    move-object v10, v0

    .line 113
    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v6, v0

    .line 114
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v7, v0

    .line 115
    const/high16 v2, 0x42700000    # 60.0f

    .line 116
    const v8, 0x3ecccccd    # 0.4f

    .line 117
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v8

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    .line 123
    sget-object v0, Lcom/chartboost/sdk/impl/bi$3;->a:[I

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bi$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object p3, v9

    .line 237
    :goto_2
    sget-object v0, Lcom/chartboost/sdk/impl/bi$b;->g:Lcom/chartboost/sdk/impl/bi$b;

    if-ne p0, v0, :cond_11

    .line 238
    if-eqz p2, :cond_1

    .line 239
    invoke-interface {p2, p1}, Lcom/chartboost/sdk/impl/bi$a;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 125
    :pswitch_0
    if-eqz p3, :cond_5

    new-instance p3, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 127
    :goto_3
    const-wide/16 v0, 0xfa

    invoke-virtual {p3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 129
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 130
    invoke-virtual {v0, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object p3, v0

    .line 131
    goto :goto_2

    .line 126
    :cond_5
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_3

    .line 133
    :pswitch_1
    if-eqz p3, :cond_6

    .line 134
    new-instance v0, Lcom/chartboost/sdk/impl/bn;

    neg-float v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v6, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v7, v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bn;-><init>(FFFFZ)V

    .line 137
    :goto_4
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 139
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 141
    if-eqz p3, :cond_7

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v1, v8, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 143
    :goto_5
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 145
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 147
    if-eqz p3, :cond_8

    .line 148
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    mul-float v0, v6, v11

    const/4 v1, 0x0

    neg-float v2, v7

    mul-float/2addr v2, v8

    const/4 v3, 0x0

    invoke-direct {p3, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 151
    :goto_6
    const-wide/16 v0, 0xfa

    invoke-virtual {p3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 153
    invoke-virtual {v9, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object p3, v9

    .line 155
    goto :goto_2

    .line 136
    :cond_6
    new-instance v0, Lcom/chartboost/sdk/impl/bn;

    const/4 v1, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v6, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v7, v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bn;-><init>(FFFFZ)V

    goto :goto_4

    .line 142
    :cond_7
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v8, v2, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_5

    .line 150
    :cond_8
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x0

    mul-float v1, v6, v11

    const/4 v2, 0x0

    invoke-direct {p3, v0, v1, v2, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_6

    .line 157
    :pswitch_2
    if-eqz p3, :cond_9

    .line 158
    new-instance v0, Lcom/chartboost/sdk/impl/bn;

    neg-float v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v6, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v7, v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bn;-><init>(FFFFZ)V

    .line 161
    :goto_7
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 162
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 163
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 165
    if-eqz p3, :cond_a

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v1, v8, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 167
    :goto_8
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 168
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 169
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 171
    if-eqz p3, :cond_b

    .line 172
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    neg-float v0, v6

    mul-float/2addr v0, v8

    const/4 v1, 0x0

    mul-float v2, v7, v11

    const/4 v3, 0x0

    invoke-direct {p3, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 175
    :goto_9
    const-wide/16 v0, 0xfa

    invoke-virtual {p3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 177
    invoke-virtual {v9, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object p3, v9

    .line 179
    goto/16 :goto_2

    .line 160
    :cond_9
    new-instance v0, Lcom/chartboost/sdk/impl/bn;

    const/4 v1, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v6, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v7, v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bn;-><init>(FFFFZ)V

    goto :goto_7

    .line 166
    :cond_a
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v8, v2, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_8

    .line 174
    :cond_b
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x0

    const/4 v1, 0x0

    mul-float v2, v7, v11

    invoke-direct {p3, v0, v6, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_9

    .line 182
    :pswitch_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 184
    if-eqz p3, :cond_c

    move v2, v7

    .line 185
    :goto_a
    if-eqz p3, :cond_d

    const/4 p3, 0x0

    .line 186
    :goto_b
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v0, v1, v2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 187
    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 188
    const/4 p3, 0x1

    invoke-virtual {v3, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 189
    invoke-virtual {v9, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object p3, v9

    .line 190
    goto/16 :goto_2

    .line 184
    :cond_c
    const/4 v2, 0x0

    goto :goto_a

    :cond_d
    move p3, v7

    .line 185
    goto :goto_b

    .line 194
    :pswitch_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 196
    if-eqz p3, :cond_e

    neg-float v2, v7

    .line 197
    :goto_c
    if-eqz p3, :cond_f

    const/4 p3, 0x0

    .line 198
    :goto_d
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v0, v1, v2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 199
    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 200
    const/4 p3, 0x1

    invoke-virtual {v3, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 201
    invoke-virtual {v9, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object p3, v9

    .line 202
    goto/16 :goto_2

    .line 196
    :cond_e
    const/4 v2, 0x0

    goto :goto_c

    .line 197
    :cond_f
    neg-float p3, v7

    goto :goto_d

    .line 205
    :pswitch_5
    if-eqz p3, :cond_10

    .line 206
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 207
    const/high16 p3, 0x43160000    # 150.0f

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 208
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 209
    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 210
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 212
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f51745c

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f51745c

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 213
    const p3, 0x4247ffff    # 49.999996f

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 214
    const/high16 p3, 0x43160000    # 150.0f

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 216
    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 217
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 219
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f8e38e4

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f8e38e4

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 220
    const p3, 0x41c7fffb    # 24.99999f

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 221
    const/high16 p3, 0x43480000    # 200.0f

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 222
    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 223
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object p3, v9

    goto/16 :goto_2

    .line 226
    :cond_10
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 227
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 228
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 229
    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 230
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object p3, v9

    .line 232
    goto/16 :goto_2

    .line 243
    :cond_11
    if-eqz p2, :cond_12

    .line 244
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/chartboost/sdk/impl/bi$2;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/bi$2;-><init>(Lcom/chartboost/sdk/impl/bi$a;Lcom/chartboost/sdk/Model/a;)V

    const-wide/16 p1, 0xfa

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    :cond_12
    invoke-virtual {v10, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_13
    move-object v10, v0

    goto/16 :goto_1

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
