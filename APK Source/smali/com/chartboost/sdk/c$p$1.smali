.class Lcom/chartboost/sdk/c$p$1;
.super Ljava/lang/Thread;
.source "c$p.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/c$p;->check(Ljava/lang/String;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/c$p$1;->val$uid:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/chartboost/sdk/c$p$1;->val$uid:Ljava/lang/String;

    # invokes: Lcom/chartboost/sdk/c$p;->$$(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/chartboost/sdk/c$p;->access$0(Ljava/lang/String;)V

    .line 45
    return-void
.end method
