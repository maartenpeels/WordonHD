.class public Lcom/heyzap/house/cache/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/house/cache/FileCache$EntriesReader;,
        Lcom/heyzap/house/cache/FileCache$SyncRunnable;
    }
.end annotation


# static fields
.field public static ENTRIES_FILENAME:Ljava/lang/String; = null

.field public static KLASS_ELEMENT:Ljava/lang/String; = null

.field public static ROOT_ENTRIES_ELEMENT:Ljava/lang/String; = null

.field public static ROOT_VERSION_ELEMENT:Ljava/lang/String; = null

.field public static final SUPER_FILE_PREFIX:Ljava/lang/String; = "hz"

.field public static UNLIMITED_SIZE:Ljava/lang/Long;

.field public static VERSION_UID:Ljava/lang/Long;


# instance fields
.field private cacheDir:Ljava/io/File;

.field private entries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/heyzap/house/cache/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private entriesFile:Ljava/io/File;

.field private executor:Ljava/util/concurrent/Executor;

.field private maxSizeBytes:Ljava/lang/Long;

.field private open:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 42
    const-string v0, "entries.json"

    sput-object v0, Lcom/heyzap/house/cache/FileCache;->ENTRIES_FILENAME:Ljava/lang/String;

    .line 43
    const-string v0, "entries"

    sput-object v0, Lcom/heyzap/house/cache/FileCache;->ROOT_ENTRIES_ELEMENT:Ljava/lang/String;

    .line 44
    const-string v0, "version"

    sput-object v0, Lcom/heyzap/house/cache/FileCache;->ROOT_VERSION_ELEMENT:Ljava/lang/String;

    .line 45
    const-string v0, "klass"

    sput-object v0, Lcom/heyzap/house/cache/FileCache;->KLASS_ELEMENT:Ljava/lang/String;

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/heyzap/house/cache/FileCache;->VERSION_UID:Ljava/lang/Long;

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/heyzap/house/cache/FileCache;->UNLIMITED_SIZE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/heyzap/house/cache/FileCache;->UNLIMITED_SIZE:Ljava/lang/Long;

    iput-object v0, p0, Lcom/heyzap/house/cache/FileCache;->maxSizeBytes:Ljava/lang/Long;

    .line 58
    iput-object p1, p0, Lcom/heyzap/house/cache/FileCache;->executor:Ljava/util/concurrent/Executor;

    .line 59
    iput-object p2, p0, Lcom/heyzap/house/cache/FileCache;->cacheDir:Ljava/io/File;

    .line 60
    iput-object p3, p0, Lcom/heyzap/house/cache/FileCache;->maxSizeBytes:Ljava/lang/Long;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/house/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/house/cache/FileCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/house/cache/FileCache;)Ljava/io/File;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/heyzap/house/cache/FileCache;->getEntriesFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/house/cache/FileCache;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private getEntriesFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/heyzap/house/cache/FileCache;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/heyzap/house/cache/FileCache;->ENTRIES_FILENAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public all()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/heyzap/house/cache/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public close()Lcom/heyzap/internal/SettableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    invoke-virtual {p0}, Lcom/heyzap/house/cache/FileCache;->sync()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/heyzap/house/cache/FileCache;->getEntriesFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 119
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/house/cache/Entry;

    .line 122
    invoke-virtual {p0}, Lcom/heyzap/house/cache/Entry;->deleteHardReference()Ljava/lang/Boolean;

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public flush()Lcom/heyzap/internal/SettableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v1

    .line 128
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->maxSizeBytes:Ljava/lang/Long;

    sget-object v2, Lcom/heyzap/house/cache/FileCache;->UNLIMITED_SIZE:Ljava/lang/Long;

    if-ne v0, v2, :cond_0

    .line 129
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 159
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/heyzap/house/cache/FileCache;->size()Ljava/lang/Long;

    move-result-object v0

    .line 134
    iget-object v2, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/cache/Entry;

    .line 135
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/heyzap/house/cache/Entry;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 138
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 139
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 142
    :goto_2
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->maxSizeBytes:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    .line 143
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/cache/Entry;

    .line 144
    if-nez v0, :cond_2

    .line 145
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Error in popping!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 157
    goto :goto_0

    .line 148
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/heyzap/house/cache/FileCache;->remove(Lcom/heyzap/house/cache/Entry;)V

    .line 149
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/heyzap/house/cache/Entry;->getSize()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, v0

    .line 150
    goto :goto_2

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/heyzap/house/cache/FileCache;->sync()Lcom/heyzap/internal/SettableFuture;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/heyzap/house/cache/Entry;
    .locals 2

    .prologue
    .line 89
    .line 90
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/cache/Entry;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/heyzap/house/cache/Entry;->fileExists()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p0, v0}, Lcom/heyzap/house/cache/FileCache;->remove(Lcom/heyzap/house/cache/Entry;)V

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public isOpen()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public open()Lcom/heyzap/internal/SettableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/heyzap/house/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    iget-object v1, p0, Lcom/heyzap/house/cache/FileCache;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/heyzap/house/cache/FileCache$EntriesReader;

    invoke-direct {v2, p0, p0, v0}, Lcom/heyzap/house/cache/FileCache$EntriesReader;-><init>(Lcom/heyzap/house/cache/FileCache;Lcom/heyzap/house/cache/FileCache;Lcom/heyzap/internal/SettableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public put(Lcom/heyzap/house/cache/Entry;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/heyzap/house/cache/Entry;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/heyzap/house/cache/Entry;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    return-void
.end method

.method public remove(Lcom/heyzap/house/cache/Entry;)V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/heyzap/house/cache/Entry;->deleteHardReference()Ljava/lang/Boolean;

    .line 107
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/cache/Entry;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lcom/heyzap/house/cache/FileCache;->remove(Lcom/heyzap/house/cache/Entry;)V

    .line 115
    :cond_0
    return-void
.end method

.method public size()Ljava/lang/Long;
    .locals 5

    .prologue
    .line 182
    const-wide/16 v0, 0x0

    .line 183
    iget-object v2, p0, Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/house/cache/Entry;

    .line 184
    invoke-virtual {p0}, Lcom/heyzap/house/cache/Entry;->getSize()J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sync()Lcom/heyzap/internal/SettableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/heyzap/house/cache/FileCache;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/heyzap/house/cache/FileCache$SyncRunnable;

    invoke-direct {v2, p0, p0, v0}, Lcom/heyzap/house/cache/FileCache$SyncRunnable;-><init>(Lcom/heyzap/house/cache/FileCache;Lcom/heyzap/house/cache/FileCache;Lcom/heyzap/internal/SettableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 166
    return-object v0
.end method
