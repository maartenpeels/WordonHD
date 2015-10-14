.class Lcom/jirbo/adcolony/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/p$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x5

.field public static final b:I = 0xa

.field static c:Ljava/lang/String;

.field static volatile d:Lcom/jirbo/adcolony/p;

.field static volatile e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "MONITOR_MUTEX"

    sput-object v0, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static a()V
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    monitor-enter v0

    .line 22
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/jirbo/adcolony/p;->e:J

    .line 23
    sget-object v1, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    if-nez v1, :cond_0

    .line 25
    const-string v1, "Creating ADC Monitor singleton."

    invoke-static {v1}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/jirbo/adcolony/p;

    invoke-direct {v1}, Lcom/jirbo/adcolony/p;-><init>()V

    sput-object v1, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    .line 27
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method a(J)V
    .locals 1

    .prologue
    .line 105
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 34
    sget v0, Lcom/jirbo/adcolony/a;->n:I

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(I)V

    .line 36
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC Monitor Started."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 37
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->b()V

    move v0, v9

    .line 41
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 45
    sput-boolean v9, Lcom/jirbo/adcolony/a;->r:Z

    .line 46
    sget-object v3, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/d;->g()V

    .line 47
    sget-boolean v3, Lcom/jirbo/adcolony/a;->r:Z

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x32

    .line 49
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 50
    sget-wide v7, Lcom/jirbo/adcolony/p;->e:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    .line 52
    sget-object v6, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v6}, Lcom/jirbo/adcolony/d;->g()V

    .line 54
    if-eqz v0, :cond_8

    .line 56
    const/16 v6, 0xa

    if-lt v5, v6, :cond_6

    .line 80
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    monitor-enter v1

    .line 82
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-nez v0, :cond_2

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->c()V

    .line 87
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    sput-boolean v10, Lcom/jirbo/adcolony/a;->s:Z

    .line 90
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/p;->a(J)V

    .line 91
    sget-boolean v0, Lcom/jirbo/adcolony/a;->s:Z

    if-eqz v0, :cond_3

    .line 93
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC.finishing, controller on_stop"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 94
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->d()V

    .line 95
    invoke-static {}, Lcom/jirbo/adcolony/aa;->a()V

    .line 98
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exiting monitor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    return-void

    .line 47
    :cond_4
    if-eqz v0, :cond_5

    const/16 v3, 0x7d0

    :goto_2
    int-to-long v3, v3

    goto :goto_1

    :cond_5
    const/16 v3, 0xfa

    goto :goto_2

    .line 57
    :cond_6
    if-ge v5, v11, :cond_7

    .line 60
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->b()V

    .line 61
    const-string v0, "AdColony is active."

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    move v0, v9

    .line 74
    :cond_7
    :goto_3
    invoke-virtual {p0, v3, v4}, Lcom/jirbo/adcolony/p;->a(J)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 76
    sub-long v5, v3, v1

    const-wide/16 v7, 0xbb8

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    sub-long v5, v3, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 77
    sget-object v5, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v5, v5, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/v;

    iget-wide v6, v5, Lcom/jirbo/adcolony/v;->h:D

    sub-long v1, v3, v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    add-double/2addr v1, v6

    iput-wide v1, v5, Lcom/jirbo/adcolony/v;->h:D

    goto/16 :goto_0

    .line 66
    :cond_8
    if-lt v5, v11, :cond_7

    .line 68
    const-string v0, "AdColony is idle."

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->c()V

    move v0, v10

    goto :goto_3

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
