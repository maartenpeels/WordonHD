.class Lcom/jirbo/adcolony/d$3;
.super Lcom/jirbo/adcolony/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/d;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jirbo/adcolony/d$3;->a:Lcom/jirbo/adcolony/d;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/j;-><init>(Lcom/jirbo/adcolony/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jirbo/adcolony/d$3;->o:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/v;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/v;->e()V

    .line 113
    return-void
.end method
