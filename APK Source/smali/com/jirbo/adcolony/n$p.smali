.class Lcom/jirbo/adcolony/n$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "p"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Lcom/jirbo/adcolony/n$q;

.field k:Lcom/jirbo/adcolony/n$l;

.field l:Lcom/jirbo/adcolony/n$l;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1131
    iget-boolean v0, p0, Lcom/jirbo/adcolony/n$p;->a:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 1138
    :goto_0
    return v0

    .line 1132
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 1133
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 1135
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/n$p;->k:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$l;->a()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 1136
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/n$p;->l:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$l;->a()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    .line 1138
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1104
    if-nez p1, :cond_0

    move v0, v2

    .line 1126
    :goto_0
    return v0

    .line 1106
    :cond_0
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/n$p;->a:Z

    .line 1107
    const-string v0, "poster_image"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$p;->c:Ljava/lang/String;

    .line 1108
    const-string v0, "advertiser_name"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$p;->d:Ljava/lang/String;

    .line 1109
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$p;->e:Ljava/lang/String;

    .line 1110
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$p;->f:Ljava/lang/String;

    .line 1111
    const-string v0, "thumb_image"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$p;->g:Ljava/lang/String;

    .line 1112
    const-string v0, "poster_image_last_modified"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$p;->h:Ljava/lang/String;

    .line 1113
    const-string v0, "thumb_image_last_modified"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$p;->i:Ljava/lang/String;

    .line 1115
    new-instance v0, Lcom/jirbo/adcolony/n$l;

    invoke-direct {v0}, Lcom/jirbo/adcolony/n$l;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$p;->k:Lcom/jirbo/adcolony/n$l;

    .line 1116
    iget-object v0, p0, Lcom/jirbo/adcolony/n$p;->k:Lcom/jirbo/adcolony/n$l;

    const-string v1, "mute"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/n$l;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 1118
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/n$p;->k:Lcom/jirbo/adcolony/n$l;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$l;->f:Z

    iput-boolean v0, p0, Lcom/jirbo/adcolony/n$p;->b:Z

    .line 1120
    new-instance v0, Lcom/jirbo/adcolony/n$l;

    invoke-direct {v0}, Lcom/jirbo/adcolony/n$l;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$p;->l:Lcom/jirbo/adcolony/n$l;

    .line 1121
    iget-object v0, p0, Lcom/jirbo/adcolony/n$p;->l:Lcom/jirbo/adcolony/n$l;

    const-string v1, "unmute"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/n$l;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 1123
    :cond_2
    new-instance v0, Lcom/jirbo/adcolony/n$q;

    invoke-direct {v0}, Lcom/jirbo/adcolony/n$q;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$p;->j:Lcom/jirbo/adcolony/n$q;

    .line 1124
    iget-object v0, p0, Lcom/jirbo/adcolony/n$p;->j:Lcom/jirbo/adcolony/n$q;

    const-string v1, "overlay"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/n$q;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto/16 :goto_0

    .line 1126
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1143
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$p;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/jirbo/adcolony/n$p;->k:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$l;->b()V

    .line 1147
    iget-object v0, p0, Lcom/jirbo/adcolony/n$p;->l:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$l;->b()V

    .line 1148
    return-void
.end method
