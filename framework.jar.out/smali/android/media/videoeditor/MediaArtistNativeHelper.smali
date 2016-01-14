.class Landroid/media/videoeditor/MediaArtistNativeHelper;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClips;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioEffect;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionBehaviour;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioTransition;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$SlideDirection;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoTransition;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoEffect;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFrameRate;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFrameSize;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFormat;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Result;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$MediaRendering;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$FileType;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Bitrate;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSamplingFrequency;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioFormat;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Version;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$OnProgressUpdateListener;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK_PCM_FILE:Ljava/lang/String; = "AudioPcm.pcm"

.field private static final LOG:Z = true

.field private static final MAX_THUMBNAIL_PERMITTED:I = 0x8

.field public static final PROCESSING_AUDIO_PCM:I = 0x1

.field public static final PROCESSING_CAPABILITY:I = 0x1e

.field public static final PROCESSING_EXPORT:I = 0x14

.field public static final PROCESSING_INTERMEDIATE1:I = 0xb

.field public static final PROCESSING_INTERMEDIATE2:I = 0xc

.field public static final PROCESSING_INTERMEDIATE3:I = 0xd

.field public static final PROCESSING_KENBURNS:I = 0x3

.field public static final PROCESSING_NONE:I = 0x0

.field public static final PROCESSING_TRANSITION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaArtistNativeHelper"

.field public static final TASK_ENCODING:I = 0x2

.field public static final TASK_LOADING_SETTINGS:I = 0x1

.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

.field private mAudioTrack:Landroid/media/videoeditor/AudioTrack;

.field private mAudioTrackPCMFilePath:Ljava/lang/String;

.field private mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

.field private mErrorFlagSet:Z

.field private mExportAudioCodec:I

.field private mExportFilename:Ljava/lang/String;

.field private mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

.field private mExportVideoCodec:I

.field private mExportVideoFormat:I

.field private mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

.field private mInvalidatePreviewArray:Z

.field private mIsFirstProgress:Z

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mManualEditContext:I

.field private mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

.field private mOutputFilename:Ljava/lang/String;

.field private mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mPreviewProgress:J

.field private mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

.field private mProcessingObject:Ljava/lang/Object;

.field private mProcessingState:I

.field private mProgressToApp:I

.field private final mProjectPath:Ljava/lang/String;

.field private mRegenerateAudio:Z

.field private mRenderPreviewOverlayFile:Ljava/lang/String;

.field private mRenderPreviewRenderingMode:I

.field private mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mTotalClips:I

.field private final mVideoEditor:Landroid/media/videoeditor/VideoEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "videoeditor_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Landroid/media/videoeditor/VideoEditor;)V
    .locals 4
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "lock"    # Ljava/util/concurrent/Semaphore;
    .param p3, "veObj"    # Landroid/media/videoeditor/VideoEditor;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    .line 74
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 76
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    .line 78
    iput-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    .line 80
    iput-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    .line 82
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    .line 83
    iput v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    .line 84
    iput v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportAudioCodec:I

    .line 117
    iput v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 119
    iput-boolean v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    .line 4125
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    .line 1732
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    .line 1733
    if-eqz p3, :cond_1

    .line 1734
    iput-object p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 1739
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    if-nez v0, :cond_0

    .line 1740
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .line 1743
    :cond_0
    iput-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    .line 1745
    const/16 v0, 0x1e

    iput v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 1746
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    const-string/jumbo v1, "null"

    invoke-direct {p0, v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->_init(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    iput v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 1748
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .line 1749
    return-void

    .line 1736
    :cond_1
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 1737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "video editor object is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native _init(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method static synthetic access$000()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private adjustMediaItemBoundary(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;Landroid/media/videoeditor/MediaItem;)V
    .locals 4
    .param p1, "clipSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .param p2, "clipProperties"    # Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .param p3, "m"    # Landroid/media/videoeditor/MediaItem;

    .prologue
    const-wide/16 v2, 0x0

    .line 2607
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 2609
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 2610
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 2619
    :cond_0
    :goto_0
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    .line 2621
    iget v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v0, :cond_1

    .line 2622
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    .line 2625
    :cond_1
    iget v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v0, :cond_2

    .line 2626
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    .line 2628
    :cond_2
    return-void

    .line 2611
    :cond_3
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 2613
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    goto :goto_0

    .line 2614
    :cond_4
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2616
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    goto :goto_0
.end method

.method private adjustVolume(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .locals 3
    .param p1, "m"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "clipProperties"    # Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;
    .param p3, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 2679
    instance-of v1, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 2680
    check-cast v1, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaVideoItem;->isMuted()Z

    move-result v0

    .line 2681
    .local v0, "videoMuted":Z
    if-nez v0, :cond_1

    .line 2682
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p3

    check-cast p1, Landroid/media/videoeditor/MediaVideoItem;

    .end local p1    # "m":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaVideoItem;->getVolume()I

    move-result v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    .line 2690
    .end local v0    # "videoMuted":Z
    :cond_0
    :goto_0
    return-void

    .line 2685
    .restart local v0    # "videoMuted":Z
    .restart local p1    # "m":Landroid/media/videoeditor/MediaItem;
    :cond_1
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p3

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    goto :goto_0

    .line 2687
    .end local v0    # "videoMuted":Z
    :cond_2
    instance-of v1, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v1, :cond_0

    .line 2688
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p3

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    goto :goto_0
.end method

.method private checkOddSizeImage(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .locals 3
    .param p1, "m"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "clipProperties"    # Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;
    .param p3, "index"    # I

    .prologue
    .line 2700
    instance-of v2, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v2, :cond_2

    .line 2701
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iget v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 2702
    .local v1, "width":I
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iget v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    .line 2704
    .local v0, "height":I
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 2705
    add-int/lit8 v1, v1, -0x1

    .line 2707
    :cond_0
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 2708
    add-int/lit8 v0, v0, -0x1

    .line 2710
    :cond_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iput v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 2711
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iput v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    .line 2713
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_2
    return-void
.end method

.method private findVideoBitrate(I)I
    .locals 1
    .param p1, "videoFrameSize"    # I

    .prologue
    .line 3648
    packed-switch p1, :pswitch_data_0

    .line 3668
    const v0, 0x7a1200

    :goto_0
    return v0

    .line 3652
    :pswitch_0
    const v0, 0x1f400

    goto :goto_0

    .line 3655
    :pswitch_1
    const v0, 0x5dc00

    goto :goto_0

    .line 3661
    :pswitch_2
    const v0, 0x1e8480

    goto :goto_0

    .line 3665
    :pswitch_3
    const v0, 0x4c4b40

    goto :goto_0

    .line 3648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private findVideoResolution(II)I
    .locals 5
    .param p1, "aspectRatio"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v4, 0x2d0

    const/16 v3, 0x1e0

    .line 3601
    const/4 v2, -0x1

    .line 3602
    .local v2, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3634
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3635
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-static {v3}, Landroid/media/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object v1

    .line 3637
    .local v1, "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v1, v3

    .line 3638
    .local v0, "maxResolution":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    .line 3641
    .end local v0    # "maxResolution":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1    # "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    return v2

    .line 3604
    :pswitch_0
    if-ne p2, v3, :cond_2

    .line 3605
    const/4 v2, 0x7

    goto :goto_0

    .line 3606
    :cond_2
    if-ne p2, v4, :cond_0

    .line 3607
    const/16 v2, 0xb

    goto :goto_0

    .line 3610
    :pswitch_1
    if-ne p2, v3, :cond_3

    .line 3611
    const/16 v2, 0x9

    goto :goto_0

    .line 3612
    :cond_3
    if-ne p2, v4, :cond_4

    .line 3613
    const/16 v2, 0xa

    goto :goto_0

    .line 3614
    :cond_4
    const/16 v3, 0x438

    if-ne p2, v3, :cond_0

    .line 3615
    const/16 v2, 0xd

    goto :goto_0

    .line 3618
    :pswitch_2
    if-ne p2, v3, :cond_5

    .line 3619
    const/4 v2, 0x5

    goto :goto_0

    .line 3620
    :cond_5
    if-ne p2, v4, :cond_0

    .line 3621
    const/16 v2, 0xc

    goto :goto_0

    .line 3624
    :pswitch_3
    if-ne p2, v3, :cond_0

    .line 3625
    const/4 v2, 0x6

    goto :goto_0

    .line 3628
    :pswitch_4
    const/16 v3, 0x90

    if-ne p2, v3, :cond_6

    .line 3629
    const/4 v2, 0x2

    goto :goto_0

    .line 3630
    :cond_6
    const/16 v3, 0x120

    if-ne p2, v3, :cond_0

    .line 3631
    const/4 v2, 0x4

    goto :goto_0

    .line 3602
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .locals 4
    .param p1, "transition"    # Landroid/media/videoeditor/Transition;
    .param p2, "editSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    .param p3, "clipPropertiesArray"    # Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;
    .param p4, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 2641
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2642
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->generate()V

    .line 2644
    :cond_0
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    aput-object v2, v1, p4

    .line 2645
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2646
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 2647
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 2648
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 2649
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    const/4 v2, 0x2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 2652
    :try_start_0
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v2

    aput-object v2, v1, p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2658
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->Id:Ljava/lang/String;

    .line 2659
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    const/16 v2, 0x64

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    .line 2660
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    .line 2661
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v1, :cond_1

    .line 2662
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    .line 2665
    :cond_1
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v1, :cond_2

    .line 2666
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    .line 2668
    :cond_2
    return-void

    .line 2654
    :catch_0
    move-exception v0

    .line 2655
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported file or file not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEffectColorType(Landroid/media/videoeditor/EffectColor;)I
    .locals 3
    .param p1, "effect"    # Landroid/media/videoeditor/EffectColor;

    .prologue
    .line 3557
    const/4 v0, -0x1

    .line 3558
    .local v0, "retValue":I
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3584
    const/4 v0, -0x1

    .line 3586
    :goto_0
    return v0

    .line 3560
    :pswitch_0
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    const v2, 0xff00

    if-ne v1, v2, :cond_0

    .line 3561
    const/16 v0, 0x103

    goto :goto_0

    .line 3562
    :cond_0
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    const v2, 0xff66cc

    if-ne v1, v2, :cond_1

    .line 3563
    const/16 v0, 0x102

    goto :goto_0

    .line 3564
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    const v2, 0x7f7f7f

    if-ne v1, v2, :cond_2

    .line 3565
    const/16 v0, 0x101

    goto :goto_0

    .line 3567
    :cond_2
    const/16 v0, 0x10b

    .line 3569
    goto :goto_0

    .line 3571
    :pswitch_1
    const/16 v0, 0x10c

    .line 3572
    goto :goto_0

    .line 3574
    :pswitch_2
    const/16 v0, 0x104

    .line 3575
    goto :goto_0

    .line 3577
    :pswitch_3
    const/16 v0, 0x105

    .line 3578
    goto :goto_0

    .line 3580
    :pswitch_4
    const/16 v0, 0x10a

    .line 3581
    goto :goto_0

    .line 3558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getTotalEffects(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2834
    .local p1, "mediaItemsList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    const/4 v4, 0x0

    .line 2835
    .local v4, "totalEffects":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2836
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/videoeditor/MediaItem;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2837
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    .line 2838
    .local v3, "t":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    .line 2839
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    .line 2840
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2841
    .local v1, "ef":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/videoeditor/Effect;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2842
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .line 2843
    .local v0, "e":Landroid/media/videoeditor/Effect;
    instance-of v5, v0, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v5, :cond_1

    .line 2844
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2848
    .end local v0    # "e":Landroid/media/videoeditor/Effect;
    .end local v1    # "ef":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/videoeditor/Effect;>;"
    .end local v3    # "t":Landroid/media/videoeditor/MediaItem;
    :cond_2
    return v4
.end method

.method private getTransitionResolution(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)I
    .locals 5
    .param p1, "m1"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "m2"    # Landroid/media/videoeditor/MediaItem;

    .prologue
    .line 2453
    const/4 v0, 0x0

    .line 2454
    .local v0, "clip1Height":I
    const/4 v1, 0x0

    .line 2455
    .local v1, "clip2Height":I
    const/4 v2, 0x0

    .line 2457
    .local v2, "videoSize":I
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 2458
    instance-of v3, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_4

    .line 2459
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v0

    .line 2463
    .end local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    :cond_0
    :goto_0
    instance-of v3, p2, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_5

    .line 2464
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v1

    .line 2468
    .end local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    :cond_1
    :goto_1
    if-le v0, v1, :cond_6

    .line 2469
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    .line 2489
    :cond_2
    :goto_2
    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 2490
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "VideoFrameSize.V1080p to VideoFrameSize.V720p"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    const/16 v2, 0xa

    .line 2494
    :cond_3
    return v2

    .line 2460
    .restart local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    .restart local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    :cond_4
    instance-of v3, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_0

    .line 2461
    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    .end local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    goto :goto_0

    .line 2465
    :cond_5
    instance-of v3, p2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_1

    .line 2466
    check-cast p2, Landroid/media/videoeditor/MediaImageItem;

    .end local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v1

    goto :goto_1

    .line 2471
    :cond_6
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    goto :goto_2

    .line 2473
    .restart local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    .restart local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    :cond_7
    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    .line 2474
    instance-of v3, p2, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_9

    .line 2475
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v1

    .line 2479
    .end local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    :cond_8
    :goto_3
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    goto :goto_2

    .line 2476
    .restart local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    :cond_9
    instance-of v3, p2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_8

    .line 2477
    check-cast p2, Landroid/media/videoeditor/MediaImageItem;

    .end local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v1

    goto :goto_3

    .line 2480
    .restart local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    :cond_a
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 2481
    instance-of v3, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_c

    .line 2482
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v0

    .line 2486
    .end local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    :cond_b
    :goto_4
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    goto :goto_2

    .line 2483
    .restart local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    :cond_c
    instance-of v3, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_b

    .line 2484
    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    .end local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    goto :goto_4
.end method

.method private static native getVersion()Landroid/media/videoeditor/MediaArtistNativeHelper$Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private lock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 4016
    const-string v0, "MediaArtistNativeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4017
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "lock: grabbing semaphore"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4019
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 4021
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "lock: grabbed semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    return-void
.end method

.method private native nativeClearSurface(Landroid/view/Surface;)V
.end method

.method private native nativeGenerateAudioGraph(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method private native nativeGenerateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeGenerateRawAudio(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetPixels(Ljava/lang/String;[IIIJ)I
.end method

.method private native nativeGetPixelsList(Ljava/lang/String;[IIIIJJ[ILandroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;)I
.end method

.method private native nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeRenderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;IIIIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeRenderPreviewFrame(Landroid/view/Surface;JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeStartPreview(Landroid/view/Surface;JJIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeStopPreview()I
.end method

.method private onAudioGraphExtractProgressUpdate(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "isVideo"    # Z

    .prologue
    .line 1916
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 1917
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    invoke-interface {v0, p1}, Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;->onProgress(I)V

    .line 1919
    :cond_0
    return-void
.end method

.method private onPreviewProgressUpdate(IZZLjava/lang/String;II)V
    .locals 5
    .param p1, "progress"    # I
    .param p2, "isFinished"    # Z
    .param p3, "updateOverlay"    # Z
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "renderingMode"    # I
    .param p6, "error"    # I

    .prologue
    .line 1872
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    if-eqz v1, :cond_2

    .line 1873
    iget-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    if-eqz v1, :cond_0

    .line 1874
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, v2}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onStart(Landroid/media/videoeditor/VideoEditor;)V

    .line 1875
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    .line 1879
    :cond_0
    if-eqz p3, :cond_4

    .line 1880
    new-instance v0, Landroid/media/videoeditor/VideoEditor$OverlayData;

    invoke-direct {v0}, Landroid/media/videoeditor/VideoEditor$OverlayData;-><init>()V

    .line 1881
    .local v0, "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    if-eqz p4, :cond_3

    .line 1882
    invoke-static {p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Landroid/media/videoeditor/VideoEditor$OverlayData;->set(Landroid/graphics/Bitmap;I)V

    .line 1890
    :goto_0
    if-eqz p1, :cond_1

    .line 1891
    int-to-long v1, p1

    iput-wide v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgress:J

    .line 1894
    :cond_1
    if-eqz p2, :cond_5

    .line 1895
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, v2}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onStop(Landroid/media/videoeditor/VideoEditor;)V

    .line 1902
    .end local v0    # "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_2
    :goto_1
    return-void

    .line 1884
    .restart local v0    # "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_3
    invoke-virtual {v0}, Landroid/media/videoeditor/VideoEditor$OverlayData;->setClear()V

    goto :goto_0

    .line 1887
    .end local v0    # "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    goto :goto_0

    .line 1896
    :cond_5
    if-eqz p6, :cond_6

    .line 1897
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, v2, p6}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onError(Landroid/media/videoeditor/VideoEditor;I)V

    goto :goto_1

    .line 1899
    :cond_6
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onProgress(Landroid/media/videoeditor/VideoEditor;JLandroid/media/videoeditor/VideoEditor$OverlayData;)V

    goto :goto_1
.end method

.method private onProgressUpdate(II)V
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "progress"    # I

    .prologue
    const/4 v5, 0x1

    .line 1777
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 1778
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    if-eqz v2, :cond_0

    .line 1779
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-ge v2, p2, :cond_0

    .line 1780
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p2}, Landroid/media/videoeditor/VideoEditor$ExportProgressListener;->onProgress(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;I)V

    .line 1782
    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 1867
    :cond_0
    :goto_0
    return-void

    .line 1786
    :cond_1
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_3

    .line 1787
    packed-switch p1, :pswitch_data_0

    .line 1795
    const-string v2, "MediaArtistNativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR unexpected taskId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1789
    :pswitch_0
    if-nez p2, :cond_2

    .line 1790
    const/4 v2, 0x3

    iput v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    .line 1792
    :cond_2
    const-string v2, "MediaArtistNativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mExportVideoFormat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1801
    :cond_3
    const/4 v1, 0x0

    .line 1802
    .local v1, "actualProgress":I
    const/4 v0, 0x0

    .line 1804
    .local v0, "action":I
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    if-ne v2, v5, :cond_7

    .line 1805
    const/4 v0, 0x2

    .line 1810
    :goto_1
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    packed-switch v2, :pswitch_data_1

    .line 1841
    :pswitch_1
    const-string v2, "MediaArtistNativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR unexpected State="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    move v1, p2

    .line 1845
    :cond_4
    :goto_2
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eq v2, v1, :cond_5

    if-eqz v1, :cond_5

    .line 1847
    iput v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 1849
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    if-eqz v2, :cond_5

    .line 1851
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v1}, Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;->onProgress(Ljava/lang/Object;II)V

    .line 1856
    :cond_5
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-nez v2, :cond_0

    .line 1857
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    if-eqz v2, :cond_6

    .line 1861
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v1}, Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;->onProgress(Ljava/lang/Object;II)V

    .line 1864
    :cond_6
    iput v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    goto/16 :goto_0

    .line 1807
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 1812
    :pswitch_2
    move v1, p2

    .line 1813
    goto :goto_2

    .line 1815
    :pswitch_3
    move v1, p2

    .line 1816
    goto :goto_2

    .line 1818
    :pswitch_4
    move v1, p2

    .line 1819
    goto :goto_2

    .line 1821
    :pswitch_5
    if-nez p2, :cond_8

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_8

    .line 1822
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 1824
    :cond_8
    if-nez p2, :cond_9

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_4

    .line 1825
    :cond_9
    div-int/lit8 v1, p2, 0x4

    goto :goto_2

    .line 1829
    :pswitch_6
    if-nez p2, :cond_a

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_4

    .line 1830
    :cond_a
    div-int/lit8 v2, p2, 0x4

    add-int/lit8 v1, v2, 0x19

    goto :goto_2

    .line 1834
    :pswitch_7
    if-nez p2, :cond_b

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_4

    .line 1835
    :cond_b
    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v1, v2, 0x32

    goto :goto_2

    .line 1787
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1810
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private populateBackgroundMusicProperties(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mediaBGMList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2760
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 2761
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/AudioTrack;

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    .line 2766
    :goto_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    if-eqz v2, :cond_2

    .line 2767
    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;-><init>()V

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 2768
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;-><init>()V

    .line 2769
    .local v1, "mAudioProperties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pFile:Ljava/lang/String;

    .line 2770
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->Id:Ljava/lang/String;

    .line 2772
    :try_start_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v2}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2776
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-boolean v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->bRemoveOriginal:Z

    .line 2777
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->channels:I

    .line 2778
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->Fs:I

    .line 2779
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->loop:Z

    .line 2780
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ExtendedFs:I

    .line 2781
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pFile:Ljava/lang/String;

    .line 2782
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->startMs:J

    .line 2783
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->beginCutTime:J

    .line 2784
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->endCutTime:J

    .line 2785
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v2}, Landroid/media/videoeditor/AudioTrack;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2786
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->volume:I

    .line 2790
    :goto_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->fileType:I

    .line 2791
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ducking_lowVolume:I

    .line 2792
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ducking_threshold:I

    .line 2793
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->bInDucking_enable:Z

    .line 2794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AudioPcm.pcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .line 2795
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pcmFilePath:Ljava/lang/String;

    .line 2797
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    invoke-direct {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;-><init>()V

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2798
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->file:Ljava/lang/String;

    .line 2799
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->fileType:I

    .line 2800
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->insertionTime:J

    .line 2802
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->volumePercent:I

    .line 2803
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->beginLoop:J

    .line 2805
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->endLoop:J

    .line 2807
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->enableDucking:Z

    .line 2809
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->duckingThreshold:I

    .line 2811
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->lowVolume:I

    .line 2813
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->isLooping:Z

    .line 2814
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v3, 0x64

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->primaryTrackVolume:I

    .line 2815
    iput v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2816
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2822
    .end local v1    # "mAudioProperties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :goto_2
    return-void

    .line 2763
    :cond_0
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    goto/16 :goto_0

    .line 2773
    .restart local v1    # "mAudioProperties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :catch_0
    move-exception v0

    .line 2774
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported file or file not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2788
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->volume:I

    goto/16 :goto_1

    .line 2818
    .end local v1    # "mAudioProperties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :cond_2
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 2819
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2820
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    goto :goto_2
.end method

.method private populateEffects(Landroid/media/videoeditor/MediaItem;[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;IIII)I
    .locals 9
    .param p1, "m"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "effectSettings"    # [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .param p3, "i"    # I
    .param p4, "beginCutTime"    # I
    .param p5, "endCutTime"    # I
    .param p6, "storyBoardTime"    # I

    .prologue
    const-wide/16 v7, 0x0

    .line 2564
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 2566
    int-to-long v5, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int p4, v5

    .line 2567
    int-to-long v5, p5

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int p5, v5

    .line 2576
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v1

    .line 2577
    .local v1, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v4

    .line 2579
    .local v4, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/Overlay;

    .line 2580
    .local v3, "overlay":Landroid/media/videoeditor/Overlay;
    check-cast v3, Landroid/media/videoeditor/OverlayFrame;

    .end local v3    # "overlay":Landroid/media/videoeditor/Overlay;
    invoke-virtual {p0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getOverlaySettings(Landroid/media/videoeditor/OverlayFrame;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v5

    aput-object v5, p2, p3

    .line 2581
    aget-object v5, p2, p3

    invoke-virtual {p0, v5, p4, p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    .line 2582
    aget-object v5, p2, p3

    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/2addr v6, p6

    iput v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2583
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 2568
    .end local v1    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 2570
    int-to-long v5, p5

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int p5, v5

    goto :goto_0

    .line 2571
    :cond_2
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 2573
    int-to-long v5, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int p4, v5

    goto :goto_0

    .line 2586
    .restart local v1    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .line 2587
    .local v0, "effect":Landroid/media/videoeditor/Effect;
    instance-of v5, v0, Landroid/media/videoeditor/EffectColor;

    if-eqz v5, :cond_4

    .line 2588
    check-cast v0, Landroid/media/videoeditor/EffectColor;

    .end local v0    # "effect":Landroid/media/videoeditor/Effect;
    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getEffectSettings(Landroid/media/videoeditor/EffectColor;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v5

    aput-object v5, p2, p3

    .line 2589
    aget-object v5, p2, p3

    invoke-virtual {p0, v5, p4, p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    .line 2590
    aget-object v5, p2, p3

    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/2addr v6, p6

    iput v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2591
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 2595
    :cond_5
    return p3
.end method

.method private populateMediaItemProperties(Landroid/media/videoeditor/MediaItem;II)I
    .locals 2
    .param p1, "m"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "index"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 2727
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    aput-object v1, v0, p2

    .line 2728
    instance-of v0, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v0, :cond_2

    .line 2729
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getVideoClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    aput-object v0, v1, p2

    move-object v0, p1

    .line 2731
    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v0

    if-le v0, p3, :cond_0

    move-object v0, p1

    .line 2732
    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result p3

    .line 2742
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2743
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v0, v0, p2

    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    .end local p1    # "m":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    .line 2746
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v0, v0, p2

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p2

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    .line 2749
    :cond_1
    return p3

    .line 2734
    .restart local p1    # "m":Landroid/media/videoeditor/MediaItem;
    :cond_2
    instance-of v0, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v0, :cond_0

    .line 2735
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaImageItem;->getImageClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    aput-object v0, v1, p2

    move-object v0, p1

    .line 2737
    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    if-le v0, p3, :cond_0

    move-object v0, p1

    .line 2738
    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result p3

    goto :goto_0
.end method

.method private previewFrameEditInfo(Ljava/lang/String;I)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "renderingMode"    # I

    .prologue
    .line 3174
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    .line 3175
    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    .line 3176
    return-void
.end method

.method private native release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native stopEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private unlock()V
    .locals 2

    .prologue
    .line 4030
    const-string v0, "MediaArtistNativeHelper"

    const-string/jumbo v1, "unlock: releasing semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 4033
    return-void
.end method


# virtual methods
.method GetClosestVideoFrameRate(I)I
    .locals 3
    .param p1, "averageFrameRate"    # I

    .prologue
    const/4 v0, 0x7

    const/4 v1, 0x5

    .line 2136
    const/16 v2, 0x19

    if-lt p1, v2, :cond_0

    .line 2151
    :goto_0
    return v0

    .line 2138
    :cond_0
    const/16 v2, 0x14

    if-lt p1, v2, :cond_1

    .line 2139
    const/4 v0, 0x6

    goto :goto_0

    .line 2140
    :cond_1
    const/16 v2, 0xf

    if-lt p1, v2, :cond_2

    move v0, v1

    .line 2141
    goto :goto_0

    .line 2142
    :cond_2
    const/16 v2, 0xc

    if-lt p1, v2, :cond_3

    .line 2143
    const/4 v0, 0x4

    goto :goto_0

    .line 2144
    :cond_3
    const/16 v2, 0xa

    if-lt p1, v2, :cond_4

    .line 2145
    const/4 v0, 0x3

    goto :goto_0

    .line 2146
    :cond_4
    if-lt p1, v0, :cond_5

    .line 2147
    const/4 v0, 0x2

    goto :goto_0

    .line 2148
    :cond_5
    if-lt p1, v1, :cond_6

    .line 2149
    const/4 v0, 0x1

    goto :goto_0

    .line 2151
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V
    .locals 4
    .param p1, "lEffect"    # Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .param p2, "beginCutTime"    # I
    .param p3, "endCutTime"    # I

    .prologue
    .line 2162
    const/4 v1, 0x0

    .line 2163
    .local v1, "effectStartTime":I
    const/4 v0, 0x0

    .line 2188
    .local v0, "effectDuration":I
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-gt v2, p3, :cond_0

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-gt v2, p2, :cond_2

    .line 2191
    :cond_0
    const/4 v1, 0x0

    .line 2192
    const/4 v0, 0x0

    .line 2194
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2195
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 2241
    :cond_1
    :goto_0
    return-void

    .line 2200
    :cond_2
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-ge v2, p2, :cond_3

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-le v2, p2, :cond_3

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-gt v2, p3, :cond_3

    .line 2203
    const/4 v1, 0x0

    .line 2204
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 2206
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v2, p2, v2

    sub-int/2addr v0, v2

    .line 2207
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2208
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_0

    .line 2213
    :cond_3
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-lt v2, p2, :cond_4

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-gt v2, p3, :cond_4

    .line 2215
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v1, v2, p2

    .line 2216
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2217
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_0

    .line 2222
    :cond_4
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-lt v2, p2, :cond_5

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-le v2, p3, :cond_5

    .line 2224
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v1, v2, p2

    .line 2225
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v0, p3, v2

    .line 2226
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2227
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_0

    .line 2232
    :cond_5
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-ge v2, p2, :cond_1

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-le v2, p3, :cond_1

    .line 2234
    const/4 v1, 0x0

    .line 2235
    sub-int v0, p3, p2

    .line 2236
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2237
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_0
.end method

.method cancelGenerating()V
    .locals 3

    .prologue
    .line 4148
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "cancelGenerating()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4150
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stopEncoding()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4158
    return-void

    .line 4151
    :catch_0
    move-exception v0

    .line 4152
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal state exception in cancel generating"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    throw v0

    .line 4154
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 4155
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Runtime exception in cancel generating"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    throw v0
.end method

.method clearPreviewSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 4007
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeClearSurface(Landroid/view/Surface;)V

    .line 4008
    return-void
.end method

.method doPreview(Landroid/view/Surface;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    .locals 12
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "fromMs"    # J
    .param p4, "toMs"    # J
    .param p6, "loop"    # Z
    .param p7, "callbackAfterFrameCount"    # I
    .param p8, "listener"    # Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    .prologue
    .line 3060
    const-string v2, "MediaArtistNativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doPreview fromMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    iput-wide p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgress:J

    .line 3063
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    .line 3064
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    .line 3066
    iget-boolean v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-nez v2, :cond_2

    .line 3069
    const/4 v10, 0x0

    .local v10, "clipCnt":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v2, v2

    if-ge v10, v2, :cond_1

    .line 3071
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v2, v2, v10

    iget v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 3072
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v2, v2, v10

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v3, v3, v10

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 3070
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3076
    :cond_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p0, v2, v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p7

    move/from16 v9, p6

    .line 3077
    invoke-direct/range {v2 .. v9}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeStartPreview(Landroid/view/Surface;JJIZ)V

    .line 3079
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "doPreview end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3094
    return-void

    .line 3081
    :catch_0
    move-exception v11

    .line 3082
    .local v11, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Illegal argument exception in nativeStartPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    throw v11

    .line 3084
    .end local v11    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v11

    .line 3085
    .local v11, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Illegal state exception in nativeStartPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    throw v11

    .line 3087
    .end local v11    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v11

    .line 3088
    .local v11, "ex":Ljava/lang/RuntimeException;
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Runtime exception in nativeStartPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    throw v11

    .line 3092
    .end local v10    # "clipCnt":I
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "generatePreview is in progress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method export(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .locals 18
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "projectDir"    # Ljava/lang/String;
    .param p3, "height"    # I
    .param p4, "bitrate"    # I
    .param p8, "listener"    # Landroid/media/videoeditor/VideoEditor$ExportProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Landroid/media/videoeditor/VideoEditor$ExportProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3689
    .local p5, "mediaItemsList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p6, "mediaTransitionList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Transition;>;"
    .local p7, "mediaBGMList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    const-string v15, "MediaArtistNativeHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "export begin, filePath: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", height: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", bitrate: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    const/4 v11, 0x0

    .line 3693
    .local v11, "outBitrate":I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    .line 3694
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    .line 3695
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    .line 3696
    const/4 v13, 0x0

    .line 3697
    .local v13, "outVideoProfile":I
    const/4 v12, 0x0

    .line 3700
    .local v12, "outVideoLevel":I
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->get()Landroid/media/videoeditor/VideoEditorProfile;

    move-result-object v14

    .line 3701
    .local v14, "veProfile":Landroid/media/videoeditor/VideoEditorProfile;
    if-nez v14, :cond_0

    .line 3702
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Can\'t get the video editor profile"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3704
    :cond_0
    iget v9, v14, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameHeight:I

    .line 3705
    .local v9, "maxOutputHeight":I
    iget v10, v14, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameWidth:I

    .line 3706
    .local v10, "maxOutputWidth":I
    move/from16 v0, p3

    if-le v0, v9, :cond_1

    .line 3707
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported export resolution. Supported maximum width:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " height:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " current height:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3712
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    invoke-static {v15}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v13

    .line 3713
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    invoke-static {v15}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v12

    .line 3715
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 3717
    sparse-switch p4, :sswitch_data_0

    .line 3759
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Argument Bitrate incorrect"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3719
    :sswitch_0
    const/16 v11, 0x7d00

    .line 3761
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v16, 0x7

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 3762
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 3764
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v15}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    .line 3765
    .local v4, "aspectRatio":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 3766
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 3767
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportAudioCodec:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 3768
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v13, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    .line 3769
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v12, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    .line 3770
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v16, 0x7d00

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 3771
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    .line 3772
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 3773
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v11, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 3774
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const v16, 0x17700

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 3776
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 3777
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 v15, v15, -0x1

    if-ge v8, v15, :cond_2

    .line 3778
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    new-instance v16, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    invoke-direct/range {v16 .. v16}, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;-><init>()V

    aput-object v16, v15, v8

    .line 3779
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    aget-object v15, v15, v8

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 3781
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    aget-object v15, v15, v8

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    .line 3777
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3722
    .end local v4    # "aspectRatio":I
    .end local v8    # "index":I
    :sswitch_1
    const v11, 0xbb80

    .line 3723
    goto/16 :goto_0

    .line 3725
    :sswitch_2
    const v11, 0xfa00

    .line 3726
    goto/16 :goto_0

    .line 3728
    :sswitch_3
    const v11, 0x17700

    .line 3729
    goto/16 :goto_0

    .line 3731
    :sswitch_4
    const v11, 0x1f400

    .line 3732
    goto/16 :goto_0

    .line 3734
    :sswitch_5
    const v11, 0x2ee00

    .line 3735
    goto/16 :goto_0

    .line 3737
    :sswitch_6
    const v11, 0x3e800

    .line 3738
    goto/16 :goto_0

    .line 3740
    :sswitch_7
    const v11, 0x5dc00

    .line 3741
    goto/16 :goto_0

    .line 3743
    :sswitch_8
    const v11, 0x7d000

    .line 3744
    goto/16 :goto_0

    .line 3746
    :sswitch_9
    const v11, 0xc3500

    .line 3747
    goto/16 :goto_0

    .line 3749
    :sswitch_a
    const v11, 0x1e8480

    .line 3750
    goto/16 :goto_0

    .line 3752
    :sswitch_b
    const v11, 0x4c4b40

    .line 3753
    goto/16 :goto_0

    .line 3755
    :sswitch_c
    const v11, 0x7a1200

    .line 3756
    goto/16 :goto_0

    .line 3785
    .restart local v4    # "aspectRatio":I
    .restart local v8    # "index":I
    :cond_2
    const/4 v5, 0x0

    .local v5, "clipCnt":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v15, v15

    if-ge v5, v15, :cond_4

    .line 3786
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v15, v15, v5

    iget v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 3787
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v15, v15, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 3785
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3791
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    .line 3793
    const/4 v6, 0x0

    .line 3795
    .local v6, "err":I
    const/16 v15, 0x14

    :try_start_0
    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 3796
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 3797
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v6

    .line 3798
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3810
    if-eqz v6, :cond_5

    .line 3811
    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "RuntimeException for generateClip"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "generateClip failed with error="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3799
    :catch_0
    move-exception v7

    .line 3800
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "IllegalArgument for generateClip"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    throw v7

    .line 3802
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 3803
    .local v7, "ex":Ljava/lang/IllegalStateException;
    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "IllegalStateExceptiont for generateClip"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    throw v7

    .line 3805
    .end local v7    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v7

    .line 3806
    .local v7, "ex":Ljava/lang/RuntimeException;
    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "RuntimeException for generateClip"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    throw v7

    .line 3815
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    .line 3817
    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "export end"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    return-void

    .line 3717
    nop

    :sswitch_data_0
    .sparse-switch
        0x6d60 -> :sswitch_0
        0x9c40 -> :sswitch_1
        0xfa00 -> :sswitch_2
        0x17700 -> :sswitch_3
        0x1f400 -> :sswitch_4
        0x2ee00 -> :sswitch_5
        0x3e800 -> :sswitch_6
        0x5dc00 -> :sswitch_7
        0x7d000 -> :sswitch_8
        0xc3500 -> :sswitch_9
        0x1e8480 -> :sswitch_a
        0x4c4b40 -> :sswitch_b
        0x7a1200 -> :sswitch_c
    .end sparse-switch
.end method

.method generateAudioGraph(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/media/videoeditor/ExtractAudioWaveformProgressListener;Z)V
    .locals 6
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "inFileName"    # Ljava/lang/String;
    .param p3, "OutAudiGraphFileName"    # Ljava/lang/String;
    .param p4, "frameDuration"    # I
    .param p5, "audioChannels"    # I
    .param p6, "samplesCount"    # I
    .param p7, "listener"    # Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;
    .param p8, "isVideo"    # Z

    .prologue
    .line 3969
    const-string v0, "MediaArtistNativeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateAudioGraph begin, inFileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    iput-object p7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    .line 3979
    if-eqz p8, :cond_2

    .line 3980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".pcm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3988
    .local v1, "tempPCMFileName":Ljava/lang/String;
    :goto_0
    if-eqz p8, :cond_0

    .line 3989
    invoke-direct {p0, p2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateRawAudio(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 3992
    invoke-direct/range {v0 .. v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateAudioGraph(Ljava/lang/String;Ljava/lang/String;III)I

    .line 3998
    if-eqz p8, :cond_1

    .line 3999
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4002
    :cond_1
    const-string v0, "MediaArtistNativeHelper"

    const-string v2, "generateAudioGraph end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    return-void

    .line 3982
    .end local v1    # "tempPCMFileName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .restart local v1    # "tempPCMFileName":Ljava/lang/String;
    goto :goto_0
.end method

.method public generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .locals 6
    .param p1, "editSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .prologue
    const/4 v2, -0x1

    .line 2252
    const/4 v0, 0x0

    .line 2256
    .local v0, "err":I
    :try_start_0
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "generateClip begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v0

    .line 2258
    const-string v3, "MediaArtistNativeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateClip end, err: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move v2, v0

    .line 2270
    :goto_0
    return v2

    .line 2260
    :catch_0
    move-exception v1

    .line 2261
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Illegal Argument exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2263
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 2264
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Illegal state exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2266
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 2267
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Runtime exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method generateEffectClip(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "lMediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "lclipSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .param p3, "e"    # Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    .param p4, "uniqueId"    # Ljava/lang/String;
    .param p5, "clipNo"    # I

    .prologue
    .line 2315
    const/4 v2, 0x0

    .line 2316
    .local v2, "err":I
    const/4 v1, 0x0

    .line 2317
    .local v1, "editSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    const/4 v0, 0x0

    .line 2318
    .local v0, "EffectClipPath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2319
    .local v5, "outVideoProfile":I
    const/4 v4, 0x0

    .line 2320
    .local v4, "outVideoLevel":I
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .end local v1    # "editSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    .line 2322
    .restart local v1    # "editSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 2323
    iget-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    .line 2325
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2326
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 2327
    iget-object v7, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 2329
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ClipEffectIntermediate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".3gp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2332
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2333
    .local v6, "tmpFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2334
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2337
    :cond_0
    iget v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    invoke-static {v7}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v5

    .line 2338
    iget v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    invoke-static {v7}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v4

    .line 2339
    iput v5, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    .line 2340
    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    .line 2342
    instance-of v7, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v7, :cond_2

    move-object v3, p1

    .line 2343
    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    .line 2345
    .local v3, "m":Landroid/media/videoeditor/MediaVideoItem;
    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2346
    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 2347
    const v7, 0xfa00

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2348
    const/16 v7, 0x7d00

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2350
    iget v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2351
    const/4 v7, 0x7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2352
    iget-object v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v7

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2354
    iget v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 2369
    .end local v3    # "m":Landroid/media/videoeditor/MediaVideoItem;
    :goto_0
    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 2371
    const/4 v7, 0x1

    if-ne p5, v7, :cond_3

    .line 2372
    const/16 v7, 0xb

    iput v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2376
    :cond_1
    :goto_1
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2377
    invoke-virtual {p0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v2

    .line 2378
    const/4 v7, 0x0

    iput v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2380
    if-nez v2, :cond_4

    .line 2381
    iput-object v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2382
    const/4 v7, 0x0

    iput v7, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 2383
    return-object v0

    :cond_2
    move-object v3, p1

    .line 2356
    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    .line 2357
    .local v3, "m":Landroid/media/videoeditor/MediaImageItem;
    const v7, 0xfa00

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2358
    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 2359
    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2360
    const/16 v7, 0x7d00

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2362
    iget v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2363
    const/4 v7, 0x7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2364
    iget-object v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v7

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2366
    iget v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    goto :goto_0

    .line 2373
    .end local v3    # "m":Landroid/media/videoeditor/MediaImageItem;
    :cond_3
    const/4 v7, 0x2

    if-ne p5, v7, :cond_1

    .line 2374
    const/16 v7, 0xc

    iput v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    goto :goto_1

    .line 2385
    :cond_4
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "preview generation cannot be completed"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method generateKenBurnsClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaImageItem;)Ljava/lang/String;
    .locals 9
    .param p1, "e"    # Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    .param p2, "m"    # Landroid/media/videoeditor/MediaImageItem;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2400
    const/4 v3, 0x0

    .line 2401
    .local v3, "output":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2402
    .local v0, "err":I
    const/4 v2, 0x0

    .line 2403
    .local v2, "outVideoProfile":I
    const/4 v1, 0x0

    .line 2405
    .local v1, "outVideoLevel":I
    iput-object v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2406
    iput-object v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 2407
    iput-object v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 2408
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ImageClip-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".3gp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2410
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2411
    .local v4, "tmpFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2412
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2415
    :cond_0
    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    invoke-static {v5}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v2

    .line 2416
    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    invoke-static {v5}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v1

    .line 2417
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    .line 2418
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    .line 2420
    iput-object v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 2421
    const v5, 0xfa00

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2422
    iput v8, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 2423
    iput v8, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2424
    const/16 v5, 0x7d00

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2426
    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2427
    const/4 v5, 0x7

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2428
    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v5}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v5

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v5

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2430
    iget v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v5

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 2432
    const/4 v5, 0x3

    iput v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2433
    iput-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2434
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v0

    .line 2436
    iput v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2437
    if-eqz v0, :cond_1

    .line 2438
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "preview generation cannot be completed"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2440
    :cond_1
    return-object v3
.end method

.method generateTransitionClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/Transition;)Ljava/lang/String;
    .locals 8
    .param p1, "e"    # Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    .param p2, "uniqueId"    # Ljava/lang/String;
    .param p3, "m1"    # Landroid/media/videoeditor/MediaItem;
    .param p4, "m2"    # Landroid/media/videoeditor/MediaItem;
    .param p5, "t"    # Landroid/media/videoeditor/Transition;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 2511
    const/4 v3, 0x0

    .line 2512
    .local v3, "outputFilename":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2513
    .local v0, "err":I
    const/4 v2, 0x0

    .line 2514
    .local v2, "outVideoProfile":I
    const/4 v1, 0x0

    .line 2515
    .local v1, "outVideoLevel":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2517
    iget v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    invoke-static {v4}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v2

    .line 2518
    iget v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    invoke-static {v4}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v1

    .line 2519
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    .line 2520
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    .line 2522
    iput-object v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 2523
    const v4, 0xfa00

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2524
    iput v7, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 2525
    iput v7, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2526
    const/16 v4, 0x7d00

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2528
    iget v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2529
    const/4 v4, 0x7

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2530
    invoke-direct {p0, p3, p4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getTransitionResolution(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)I

    move-result v4

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2531
    iget v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v4

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 2533
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2534
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2536
    :cond_0
    const/16 v4, 0xd

    iput v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2537
    iput-object p5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2538
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v0

    .line 2540
    iput v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2541
    if-eqz v0, :cond_1

    .line 2542
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "preview generation cannot be completed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2544
    :cond_1
    return-object v3
.end method

.method getAspectRatio(II)I
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 3254
    int-to-double v4, p1

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 3255
    .local v0, "apRatio":D
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 3256
    .local v2, "bd":Ljava/math/BigDecimal;
    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3257
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 3258
    const/4 v3, 0x2

    .line 3259
    .local v3, "var":I
    const-wide v4, 0x3ffb333333333333L    # 1.7

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    .line 3260
    const/4 v3, 0x2

    .line 3270
    :cond_0
    :goto_0
    return v3

    .line 3261
    :cond_1
    const-wide v4, 0x3ff999999999999aL    # 1.6

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_2

    .line 3262
    const/4 v3, 0x4

    goto :goto_0

    .line 3263
    :cond_2
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_3

    .line 3264
    const/4 v3, 0x1

    goto :goto_0

    .line 3265
    :cond_3
    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v4, v0, v4

    if-lez v4, :cond_4

    .line 3266
    const/4 v3, 0x3

    goto :goto_0

    .line 3267
    :cond_4
    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_0

    .line 3268
    const/4 v3, 0x5

    goto :goto_0
.end method

.method getAudioCodecType(I)I
    .locals 1
    .param p1, "codecType"    # I

    .prologue
    .line 3352
    const/4 v0, -0x1

    .line 3353
    .local v0, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3373
    const/4 v0, -0x1

    .line 3375
    :goto_0
    return v0

    .line 3355
    :pswitch_0
    const/4 v0, 0x1

    .line 3356
    goto :goto_0

    .line 3358
    :pswitch_1
    const/4 v0, 0x2

    .line 3359
    goto :goto_0

    .line 3361
    :pswitch_2
    const/4 v0, 0x5

    .line 3362
    goto :goto_0

    .line 3365
    :pswitch_3
    const/4 v0, 0x3

    .line 3366
    goto :goto_0

    .line 3368
    :pswitch_4
    const/4 v0, 0x4

    .line 3369
    goto :goto_0

    .line 3353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method getAudioflag()Z
    .locals 1

    .prologue
    .line 2125
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    return v0
.end method

.method getEffectSettings(Landroid/media/videoeditor/EffectColor;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .locals 5
    .param p1, "effects"    # Landroid/media/videoeditor/EffectColor;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1929
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;-><init>()V

    .line 1930
    .local v0, "effectSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getStartTime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 1931
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 1932
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getEffectColorType(Landroid/media/videoeditor/EffectColor;)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    .line 1933
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->audioEffectType:I

    .line 1934
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startPercent:I

    .line 1935
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->durationPercent:I

    .line 1936
    iput-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 1937
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftX:I

    .line 1938
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftY:I

    .line 1939
    iput-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingResize:Z

    .line 1940
    iput-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->text:Ljava/lang/String;

    .line 1941
    iput-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textRenderingData:Ljava/lang/String;

    .line 1942
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferWidth:I

    .line 1943
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferHeight:I

    .line 1944
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 1945
    const/16 v1, 0xf

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    .line 1950
    :goto_0
    iget v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    const/16 v2, 0x10b

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    const/16 v2, 0x10c

    if-ne v1, v2, :cond_1

    .line 1952
    :cond_0
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->rgb16InputColor:I

    .line 1955
    :cond_1
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingStartPercent:I

    .line 1956
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingMiddlePercent:I

    .line 1957
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingEndPercent:I

    .line 1958
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeInTimePercent:I

    .line 1959
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeOutTimePercent:I

    .line 1960
    return-object v0

    .line 1947
    :cond_2
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    goto :goto_0
.end method

.method getExportVideoFormat()I
    .locals 3

    .prologue
    .line 4137
    const-string v0, "MediaArtistNativeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExportVideoFormat() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    iget v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    return v0
.end method

.method getFileType(I)I
    .locals 1
    .param p1, "fileType"    # I

    .prologue
    .line 3282
    const/4 v0, -0x1

    .line 3283
    .local v0, "retValue":I
    sparse-switch p1, :sswitch_data_0

    .line 3310
    const/4 v0, -0x1

    .line 3312
    :goto_0
    return v0

    .line 3285
    :sswitch_0
    const/16 v0, 0xff

    .line 3286
    goto :goto_0

    .line 3288
    :sswitch_1
    const/4 v0, 0x0

    .line 3289
    goto :goto_0

    .line 3291
    :sswitch_2
    const/4 v0, 0x1

    .line 3292
    goto :goto_0

    .line 3294
    :sswitch_3
    const/4 v0, 0x5

    .line 3295
    goto :goto_0

    .line 3297
    :sswitch_4
    const/16 v0, 0x8

    .line 3298
    goto :goto_0

    .line 3300
    :sswitch_5
    const/4 v0, 0x3

    .line 3301
    goto :goto_0

    .line 3303
    :sswitch_6
    const/16 v0, 0xa

    .line 3304
    goto :goto_0

    .line 3306
    :sswitch_7
    const/4 v0, 0x2

    .line 3307
    goto :goto_0

    .line 3283
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_7
        0x3 -> :sswitch_5
        0x5 -> :sswitch_3
        0x8 -> :sswitch_4
        0xa -> :sswitch_6
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method getFrameRate(I)I
    .locals 1
    .param p1, "fps"    # I

    .prologue
    .line 3386
    const/4 v0, -0x1

    .line 3387
    .local v0, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3414
    const/4 v0, -0x1

    .line 3416
    :goto_0
    return v0

    .line 3389
    :pswitch_0
    const/4 v0, 0x5

    .line 3390
    goto :goto_0

    .line 3392
    :pswitch_1
    const/16 v0, 0x8

    .line 3393
    goto :goto_0

    .line 3395
    :pswitch_2
    const/16 v0, 0xa

    .line 3396
    goto :goto_0

    .line 3398
    :pswitch_3
    const/16 v0, 0xd

    .line 3399
    goto :goto_0

    .line 3401
    :pswitch_4
    const/16 v0, 0xf

    .line 3402
    goto :goto_0

    .line 3404
    :pswitch_5
    const/16 v0, 0x14

    .line 3405
    goto :goto_0

    .line 3407
    :pswitch_6
    const/16 v0, 0x19

    .line 3408
    goto :goto_0

    .line 3410
    :pswitch_7
    const/16 v0, 0x1e

    .line 3411
    goto :goto_0

    .line 3387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method getGeneratePreview()Z
    .locals 1

    .prologue
    .line 3242
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    return v0
.end method

.method getMediaItemFileType(I)I
    .locals 1
    .param p1, "fileType"    # I

    .prologue
    .line 3428
    const/4 v0, -0x1

    .line 3430
    .local v0, "retValue":I
    sparse-switch p1, :sswitch_data_0

    .line 3451
    const/4 v0, -0x1

    .line 3453
    :goto_0
    return v0

    .line 3432
    :sswitch_0
    const/16 v0, 0xff

    .line 3433
    goto :goto_0

    .line 3435
    :sswitch_1
    const/4 v0, 0x0

    .line 3436
    goto :goto_0

    .line 3438
    :sswitch_2
    const/4 v0, 0x1

    .line 3439
    goto :goto_0

    .line 3441
    :sswitch_3
    const/4 v0, 0x5

    .line 3442
    goto :goto_0

    .line 3444
    :sswitch_4
    const/16 v0, 0x8

    .line 3445
    goto :goto_0

    .line 3447
    :sswitch_5
    const/16 v0, 0xa

    .line 3448
    goto :goto_0

    .line 3430
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_4
        0xa -> :sswitch_5
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method getMediaItemRenderingMode(I)I
    .locals 1
    .param p1, "renderingMode"    # I

    .prologue
    .line 3466
    const/4 v0, -0x1

    .line 3467
    .local v0, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3479
    const/4 v0, -0x1

    .line 3481
    :goto_0
    return v0

    .line 3469
    :pswitch_0
    const/4 v0, 0x2

    .line 3470
    goto :goto_0

    .line 3472
    :pswitch_1
    const/4 v0, 0x0

    .line 3473
    goto :goto_0

    .line 3475
    :pswitch_2
    const/4 v0, 0x1

    .line 3476
    goto :goto_0

    .line 3467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method native getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method getOverlaySettings(Landroid/media/videoeditor/OverlayFrame;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .locals 17
    .param p1, "overlay"    # Landroid/media/videoeditor/OverlayFrame;

    .prologue
    .line 1971
    new-instance v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-direct {v12}, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;-><init>()V

    .line 1972
    .local v12, "effectSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    const/4 v1, 0x0

    .line 1974
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getStartTime()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 1975
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 1976
    const/16 v2, 0x106

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    .line 1977
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->audioEffectType:I

    .line 1978
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startPercent:I

    .line 1979
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->durationPercent:I

    .line 1980
    const/4 v2, 0x0

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 1982
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1983
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 1985
    iget-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1987
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/media/videoeditor/OverlayFrame;->save(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1991
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 1993
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_4

    .line 1994
    const/4 v2, 0x6

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    .line 2002
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    .line 2003
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    .line 2004
    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    new-array v2, v2, [I

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    .line 2005
    const/4 v6, 0x0

    .line 2006
    .local v6, "tmp":I
    const/4 v14, 0x0

    .line 2007
    .local v14, "maxAlpha":S
    const/16 v16, 0xff

    .line 2008
    .local v16, "minAlpha":S
    const/4 v9, 0x0

    .line 2009
    .local v9, "alpha":S
    :goto_2
    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    if-ge v6, v2, :cond_8

    .line 2010
    iget-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    const/4 v3, 0x0

    iget v4, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    const/4 v5, 0x0

    iget v7, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 2013
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    if-ge v13, v2, :cond_7

    .line 2014
    iget-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    aget v2, v2, v13

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-short v9, v2

    .line 2015
    if-le v9, v14, :cond_2

    .line 2016
    move v14, v9

    .line 2018
    :cond_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    .line 2019
    move/from16 v16, v9

    .line 2013
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1988
    .end local v6    # "tmp":I
    .end local v9    # "alpha":S
    .end local v13    # "i":I
    .end local v14    # "maxAlpha":S
    .end local v16    # "minAlpha":S
    :catch_0
    move-exception v11

    .line 1989
    .local v11, "e":Ljava/io/IOException;
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "getOverlaySettings : File not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1995
    .end local v11    # "e":Ljava/io/IOException;
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_5

    .line 1996
    const/4 v2, 0x5

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    goto :goto_1

    .line 1997
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_6

    .line 1998
    const/4 v2, 0x4

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    goto :goto_1

    .line 1999
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1

    .line 2000
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bitmap config not supported"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2022
    .restart local v6    # "tmp":I
    .restart local v9    # "alpha":S
    .restart local v13    # "i":I
    .restart local v14    # "maxAlpha":S
    .restart local v16    # "minAlpha":S
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2024
    .end local v13    # "i":I
    :cond_8
    add-int v2, v14, v16

    div-int/lit8 v2, v2, 0x2

    int-to-short v9, v2

    .line 2025
    mul-int/lit8 v2, v9, 0x64

    div-int/lit16 v2, v2, 0x100

    int-to-short v9, v2

    .line 2026
    iput v9, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingEndPercent:I

    .line 2027
    iput v9, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingMiddlePercent:I

    .line 2028
    iput v9, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingStartPercent:I

    .line 2029
    const/16 v2, 0x64

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeInTimePercent:I

    .line 2030
    const/16 v2, 0x64

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeOutTimePercent:I

    .line 2031
    const/4 v2, 0x0

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    .line 2036
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeWidth()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    .line 2037
    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    if-nez v2, :cond_9

    .line 2038
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    .line 2041
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeHeight()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    .line 2042
    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    if-nez v2, :cond_a

    .line 2043
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    .line 2048
    .end local v6    # "tmp":I
    .end local v9    # "alpha":S
    .end local v14    # "maxAlpha":S
    .end local v16    # "minAlpha":S
    :cond_a
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftX:I

    .line 2049
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftY:I

    .line 2051
    const/4 v2, 0x1

    iput-boolean v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingResize:Z

    .line 2052
    const/4 v2, 0x0

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->text:Ljava/lang/String;

    .line 2053
    const/4 v2, 0x0

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textRenderingData:Ljava/lang/String;

    .line 2054
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferWidth:I

    .line 2055
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferHeight:I

    .line 2056
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    .line 2057
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->rgb16InputColor:I

    .line 2060
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    instance-of v2, v2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v2, :cond_c

    .line 2061
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2063
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedClipHeight()I

    move-result v15

    .line 2064
    .local v15, "mediaItemHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedClipWidth()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v10

    .line 2076
    .local v10, "aspectRatio":I
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingScaledSize:I

    .line 2077
    return-object v12

    .line 2069
    .end local v10    # "aspectRatio":I
    .end local v15    # "mediaItemHeight":I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v15

    .line 2070
    .restart local v15    # "mediaItemHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v10

    .restart local v10    # "aspectRatio":I
    goto :goto_4

    .line 2073
    .end local v10    # "aspectRatio":I
    .end local v15    # "mediaItemHeight":I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v10

    .line 2074
    .restart local v10    # "aspectRatio":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v15

    .restart local v15    # "mediaItemHeight":I
    goto :goto_4
.end method

.method getPixels(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "timeMs"    # J
    .param p6, "videoRotation"    # I

    .prologue
    .line 3851
    const/4 v0, 0x1

    new-array v12, v0, [Landroid/graphics/Bitmap;

    .line 3852
    .local v12, "result":[Landroid/graphics/Bitmap;
    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v9, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v9, v0

    new-instance v10, Landroid/media/videoeditor/MediaArtistNativeHelper$1;

    invoke-direct {v10, p0, v12}, Landroid/media/videoeditor/MediaArtistNativeHelper$1;-><init>(Landroid/media/videoeditor/MediaArtistNativeHelper;[Landroid/graphics/Bitmap;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p4

    move/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V

    .line 3858
    const/4 v0, 0x0

    aget-object v0, v12, v0

    return-object v0
.end method

.method getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V
    .locals 25
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "startMs"    # J
    .param p6, "endMs"    # J
    .param p8, "thumbnailCount"    # I
    .param p9, "indices"    # [I
    .param p10, "callback"    # Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;
    .param p11, "videoRotation"    # I

    .prologue
    .line 3883
    add-int/lit8 v1, p2, 0x1

    and-int/lit8 v10, v1, -0x2

    .line 3884
    .local v10, "decWidth":I
    add-int/lit8 v1, p3, 0x1

    and-int/lit8 v11, v1, -0x2

    .line 3885
    .local v11, "decHeight":I
    mul-int v7, v10, v11

    .line 3890
    .local v7, "thumbnailSize":I
    new-array v6, v7, [I

    .line 3891
    .local v6, "decArray":[I
    invoke-static {v7}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    .line 3895
    .local v5, "decBuffer":Ljava/nio/IntBuffer;
    move/from16 v0, p2

    if-ne v10, v0, :cond_0

    move/from16 v0, p3

    if-ne v11, v0, :cond_0

    if-eqz p11, :cond_3

    :cond_0
    const/4 v8, 0x1

    .line 3897
    .local v8, "needToMassage":Z
    :goto_0
    if-eqz v8, :cond_4

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3902
    .local v9, "tmpBitmap":Landroid/graphics/Bitmap;
    :goto_1
    const/16 v1, 0x5a

    move/from16 v0, p11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    move/from16 v0, p11

    if-ne v0, v1, :cond_5

    :cond_1
    const/16 v24, 0x1

    .line 3903
    .local v24, "needToSwapWH":Z
    :goto_2
    if-eqz v24, :cond_6

    move/from16 v3, p3

    .line 3904
    .local v3, "outWidth":I
    :goto_3
    if-eqz v24, :cond_7

    move/from16 v4, p2

    .line 3906
    .local v4, "outHeight":I
    :goto_4
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$2;

    move-object/from16 v2, p0

    move/from16 v12, p11

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Landroid/media/videoeditor/MediaArtistNativeHelper$2;-><init>(Landroid/media/videoeditor/MediaArtistNativeHelper;IILjava/nio/IntBuffer;[IIZLandroid/graphics/Bitmap;IIILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v6

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, p8

    move-wide/from16 v18, p4

    move-wide/from16 v20, p6

    move-object/from16 v22, p9

    move-object/from16 v23, v1

    invoke-direct/range {v12 .. v23}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsList(Ljava/lang/String;[IIIIJJ[ILandroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;)I

    .line 3943
    if-eqz v9, :cond_2

    .line 3944
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 3946
    :cond_2
    return-void

    .line 3895
    .end local v3    # "outWidth":I
    .end local v4    # "outHeight":I
    .end local v8    # "needToMassage":Z
    .end local v9    # "tmpBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "needToSwapWH":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 3897
    .restart local v8    # "needToMassage":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 3902
    .restart local v9    # "tmpBitmap":Landroid/graphics/Bitmap;
    :cond_5
    const/16 v24, 0x0

    goto :goto_2

    .restart local v24    # "needToSwapWH":Z
    :cond_6
    move/from16 v3, p2

    .line 3903
    goto :goto_3

    .restart local v3    # "outWidth":I
    :cond_7
    move/from16 v4, p3

    .line 3904
    goto :goto_4
.end method

.method getProjectAudioTrackPCMFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1762
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    return-object v0
.end method

.method getProjectPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method getSlideSettingsDirection(I)I
    .locals 1
    .param p1, "slideDirection"    # I

    .prologue
    .line 3527
    const/4 v0, -0x1

    .line 3528
    .local v0, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3543
    const/4 v0, -0x1

    .line 3545
    :goto_0
    return v0

    .line 3530
    :pswitch_0
    const/4 v0, 0x0

    .line 3531
    goto :goto_0

    .line 3533
    :pswitch_1
    const/4 v0, 0x1

    .line 3534
    goto :goto_0

    .line 3536
    :pswitch_2
    const/4 v0, 0x2

    .line 3537
    goto :goto_0

    .line 3539
    :pswitch_3
    const/4 v0, 0x3

    .line 3540
    goto :goto_0

    .line 3528
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getVideoCodecType(I)I
    .locals 1
    .param p1, "codecType"    # I

    .prologue
    .line 3324
    const/4 v0, -0x1

    .line 3325
    .local v0, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3338
    const/4 v0, -0x1

    .line 3340
    :goto_0
    return v0

    .line 3327
    :pswitch_0
    const/4 v0, 0x1

    .line 3328
    goto :goto_0

    .line 3330
    :pswitch_1
    const/4 v0, 0x2

    .line 3331
    goto :goto_0

    .line 3333
    :pswitch_2
    const/4 v0, 0x3

    .line 3334
    goto :goto_0

    .line 3325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getVideoTransitionBehaviour(I)I
    .locals 1
    .param p1, "transitionType"    # I

    .prologue
    .line 3493
    const/4 v0, -0x1

    .line 3494
    .local v0, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3512
    const/4 v0, -0x1

    .line 3514
    :goto_0
    return v0

    .line 3496
    :pswitch_0
    const/4 v0, 0x0

    .line 3497
    goto :goto_0

    .line 3499
    :pswitch_1
    const/4 v0, 0x2

    .line 3500
    goto :goto_0

    .line 3502
    :pswitch_2
    const/4 v0, 0x1

    .line 3503
    goto :goto_0

    .line 3505
    :pswitch_3
    const/4 v0, 0x3

    .line 3506
    goto :goto_0

    .line 3508
    :pswitch_4
    const/4 v0, 0x4

    .line 3509
    goto :goto_0

    .line 3494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .locals 2
    .param p1, "lclipSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2280
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2281
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    .line 2282
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    .line 2283
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 2284
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 2285
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 2286
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    .line 2287
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    .line 2288
    iput-boolean v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    .line 2289
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    .line 2290
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    .line 2291
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    .line 2292
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    .line 2293
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    .line 2294
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    .line 2295
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 2296
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rotationDegree:I

    .line 2297
    return-void
.end method

.method invalidatePcmFile()V
    .locals 2

    .prologue
    .line 1769
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1770
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1771
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .line 1773
    :cond_0
    return-void
.end method

.method nativeHelperGetAspectRatio()I
    .locals 1

    .prologue
    .line 2082
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v0

    return v0
.end method

.method previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
    .locals 26
    .param p4, "listener"    # Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2867
    .local p1, "mediaItemsList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p2, "mediaTransitionList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Transition;>;"
    .local p3, "mediaBGMList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    const-string v3, "MediaArtistNativeHelper"

    const-string/jumbo v5, "previewStoryBoard begin"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-eqz v3, :cond_d

    .line 2870
    const/16 v18, 0x0

    .line 2871
    .local v18, "previewIndex":I
    const/16 v20, 0x0

    .line 2872
    .local v20, "totalEffects":I
    const/4 v9, 0x0

    .line 2873
    .local v9, "storyBoardTime":I
    const/16 v17, 0x0

    .line 2874
    .local v17, "maxHeight":I
    const/4 v7, 0x0

    .line 2875
    .local v7, "beginCutTime":I
    const/4 v8, 0x0

    .line 2876
    .local v8, "endCutTime":I
    const/4 v6, 0x0

    .line 2877
    .local v6, "effectIndex":I
    const/16 v16, 0x0

    .line 2878
    .local v16, "lTransition":Landroid/media/videoeditor/Transition;
    const/4 v4, 0x0

    .line 2879
    .local v4, "lMediaItem":Landroid/media/videoeditor/MediaItem;
    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .line 2880
    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    invoke-direct {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    .line 2881
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 2883
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 2884
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/media/videoeditor/Transition;

    .line 2885
    .local v21, "transition":Landroid/media/videoeditor/Transition;
    invoke-virtual/range {v21 .. v21}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v3, v22, v24

    if-lez v3, :cond_0

    .line 2886
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    goto :goto_0

    .line 2890
    .end local v21    # "transition":Landroid/media/videoeditor/Transition;
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getTotalEffects(Ljava/util/List;)I

    move-result v20

    .line 2892
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    new-array v5, v5, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 2893
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move/from16 v0, v20

    new-array v5, v0, [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 2894
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    new-array v5, v5, [Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    .line 2897
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    .line 2898
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 2900
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2901
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_5

    .line 2903
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "lMediaItem":Landroid/media/videoeditor/MediaItem;
    check-cast v4, Landroid/media/videoeditor/MediaItem;

    .line 2904
    .restart local v4    # "lMediaItem":Landroid/media/videoeditor/MediaItem;
    instance-of v3, v4, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_7

    move-object v3, v4

    .line 2905
    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v7, v0

    move-object v3, v4

    .line 2906
    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 2912
    :cond_2
    :goto_2
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v16

    .line 2913
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v3, v22, v24

    if-lez v3, :cond_3

    .line 2915
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 2917
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v3, v3, v18

    iget v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    add-int/2addr v9, v3

    .line 2918
    add-int/lit8 v18, v18, 0x1

    .line 2921
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateMediaItemProperties(Landroid/media/videoeditor/MediaItem;II)I

    move-result v17

    .line 2923
    instance-of v3, v4, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_b

    .line 2924
    const/16 v19, 0x0

    .line 2925
    .local v19, "tmpCnt":I
    const/4 v10, 0x0

    .line 2926
    .local v10, "bEffectKbPresent":Z
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v12

    .line 2930
    .local v12, "effectList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_4

    .line 2931
    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v3, :cond_8

    .line 2932
    const/4 v10, 0x1

    .line 2938
    :cond_4
    if-eqz v10, :cond_a

    .line 2940
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 2941
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v5, v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2978
    .end local v10    # "bEffectKbPresent":Z
    .end local v12    # "effectList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v19    # "tmpCnt":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v3, v3, v18

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->Id:Ljava/lang/String;

    .line 2979
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->checkOddSizeImage(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 2980
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustVolume(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 2987
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v3, v3, v18

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustMediaItemBoundary(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;Landroid/media/videoeditor/MediaItem;)V

    .line 2995
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateEffects(Landroid/media/videoeditor/MediaItem;[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;IIII)I

    move-result v6

    .line 2998
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v3, v3, v18

    iget v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    add-int/2addr v9, v3

    .line 2999
    add-int/lit8 v18, v18, 0x1

    .line 3003
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v14, v3, :cond_c

    .line 3004
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v16

    .line 3005
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v3, v22, v24

    if-lez v3, :cond_c

    .line 3006
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 3013
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    if-nez v3, :cond_6

    .line 3014
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v5}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v5

    iput v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 3016
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateBackgroundMusicProperties(Ljava/util/List;)V

    .line 3020
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v5, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 3031
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    .line 3032
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 3035
    .end local v14    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    if-eqz v3, :cond_d

    .line 3036
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    .line 3037
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "preview generation cannot be completed"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2907
    .restart local v14    # "i":I
    :cond_7
    instance-of v3, v4, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_2

    .line 2908
    const/4 v7, 0x0

    move-object v3, v4

    .line 2909
    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    goto/16 :goto_2

    .line 2935
    .restart local v10    # "bEffectKbPresent":Z
    .restart local v12    # "effectList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .restart local v19    # "tmpCnt":I
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 2946
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledImageFileName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v5, v18

    .line 2949
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v3, v18

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v3

    iput v3, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 2951
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v3, v18

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v3

    iput v3, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 2954
    :catch_0
    move-exception v11

    .line 2955
    .local v11, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported file or file not found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2959
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledImageFileName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v5, v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2965
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v3, v18

    move-object v3, v4

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v3

    iput v3, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 2967
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v3, v18

    move-object v3, v4

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v3

    iput v3, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    goto/16 :goto_4

    .line 2962
    :catch_1
    move-exception v11

    .line 2963
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported file or file not found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2972
    .end local v10    # "bEffectKbPresent":Z
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "effectList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v19    # "tmpCnt":I
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v5

    aput-object v5, v3, v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    .line 2974
    :catch_2
    move-exception v11

    .line 2975
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported file or file not found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2901
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 3021
    :catch_3
    move-exception v13

    .line 3022
    .local v13, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v5, "Illegal argument exception in nativePopulateSettings"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    throw v13

    .line 3024
    .end local v13    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v13

    .line 3025
    .local v13, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v5, "Illegal state exception in nativePopulateSettings"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    throw v13

    .line 3027
    .end local v13    # "ex":Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v13

    .line 3028
    .local v13, "ex":Ljava/lang/RuntimeException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v5, "Runtime exception in nativePopulateSettings"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    throw v13

    .line 3041
    .end local v4    # "lMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v6    # "effectIndex":I
    .end local v7    # "beginCutTime":I
    .end local v8    # "endCutTime":I
    .end local v9    # "storyBoardTime":I
    .end local v13    # "ex":Ljava/lang/RuntimeException;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "lTransition":Landroid/media/videoeditor/Transition;
    .end local v17    # "maxHeight":I
    .end local v18    # "previewIndex":I
    .end local v20    # "totalEffects":I
    :cond_d
    const-string v3, "MediaArtistNativeHelper"

    const-string/jumbo v5, "previewStoryBoard end"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    return-void
.end method

.method releaseNativeHelper()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1908
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->release()V

    .line 1909
    return-void
.end method

.method renderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;JII)J
    .locals 12
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "framewidth"    # I
    .param p6, "frameheight"    # I

    .prologue
    .line 3194
    const-wide/16 v10, 0x0

    .line 3197
    .local v10, "timeMs":J
    :try_start_0
    const-string v0, "MediaArtistNativeHelper"

    const-string/jumbo v1, "renderMediaItemPreviewFrame begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-wide v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeRenderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;IIIIJ)I

    move-result v0

    int-to-long v10, v0

    .line 3202
    const-string v0, "MediaArtistNativeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renderMediaItemPreviewFrame end, timeMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3215
    return-wide v10

    .line 3204
    :catch_0
    move-exception v9

    .line 3205
    .local v9, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Illegal Argument exception in renderMediaItemPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    throw v9

    .line 3207
    .end local v9    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    .line 3208
    .local v9, "ex":Ljava/lang/IllegalStateException;
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Illegal state exception in renderMediaItemPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    throw v9

    .line 3210
    .end local v9    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v9

    .line 3211
    .local v9, "ex":Ljava/lang/RuntimeException;
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Runtime exception in renderMediaItemPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    throw v9
.end method

.method renderPreviewFrame(Landroid/view/Surface;JIILandroid/media/videoeditor/VideoEditor$OverlayData;)J
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "time"    # J
    .param p4, "surfaceWidth"    # I
    .param p5, "surfaceHeight"    # I
    .param p6, "overlayData"    # Landroid/media/videoeditor/VideoEditor$OverlayData;

    .prologue
    .line 3124
    const-string v4, "MediaArtistNativeHelper"

    const-string/jumbo v5, "renderPreviewFrame begin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    iget-boolean v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-eqz v4, :cond_1

    .line 3127
    const-string v4, "MediaArtistNativeHelper"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3128
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Call generate preview first"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Call generate preview first"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3133
    :cond_1
    const-wide/16 v2, 0x0

    .line 3135
    .local v2, "timeMs":J
    const/4 v0, 0x0

    .local v0, "clipCnt":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 3137
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 3138
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v4, v4, v0

    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v5, v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v5, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 3136
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3144
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    .line 3145
    const/4 v4, 0x0

    iput v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    .line 3147
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p0, v4, v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    .line 3149
    invoke-direct/range {p0 .. p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeRenderPreviewFrame(Landroid/view/Surface;JII)I

    move-result v4

    int-to-long v2, v4

    .line 3151
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 3152
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    invoke-virtual {p6, v4, v5}, Landroid/media/videoeditor/VideoEditor$OverlayData;->set(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3168
    :goto_1
    const-string v4, "MediaArtistNativeHelper"

    const-string/jumbo v5, "renderPreviewFrame end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    return-wide v2

    .line 3155
    :cond_4
    :try_start_1
    invoke-virtual {p6}, Landroid/media/videoeditor/VideoEditor$OverlayData;->setClear()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 3157
    :catch_0
    move-exception v1

    .line 3158
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Illegal Argument exception in nativeRenderPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    throw v1

    .line 3160
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 3161
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Illegal state exception in nativeRenderPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    throw v1

    .line 3163
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 3164
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Runtime exception in nativeRenderPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    throw v1
.end method

.method setAudioCodec(I)V
    .locals 0
    .param p1, "codec"    # I

    .prologue
    .line 2092
    iput p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportAudioCodec:I

    .line 2093
    return-void
.end method

.method setAudioflag(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 2112
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AudioPcm.pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2113
    const/4 p1, 0x1

    .line 2115
    :cond_0
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    .line 2116
    return-void
.end method

.method setExportVideoFormat(I)V
    .locals 3
    .param p1, "videoformat"    # I

    .prologue
    .line 4130
    const-string v0, "MediaArtistNativeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExportVideoFormat("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mExportVideoFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4131
    iput p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoFormat:I

    .line 4132
    return-void
.end method

.method setGeneratePreview(Z)V
    .locals 4
    .param p1, "isRequired"    # Z

    .prologue
    .line 3223
    const/4 v1, 0x0

    .line 3225
    .local v1, "semAcquiredDone":Z
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->lock()V

    .line 3226
    const/4 v1, 0x1

    .line 3227
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3231
    if-eqz v1, :cond_0

    .line 3232
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    .line 3235
    :cond_0
    :goto_0
    return-void

    .line 3228
    :catch_0
    move-exception v0

    .line 3229
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Runtime exception in renderMediaItemPreviewFrame"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3231
    if-eqz v1, :cond_0

    .line 3232
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    goto :goto_0

    .line 3231
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 3232
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    :cond_1
    throw v2
.end method

.method setVideoCodec(I)V
    .locals 0
    .param p1, "codec"    # I

    .prologue
    .line 2101
    iput p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    .line 2102
    return-void
.end method

.method stop(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 3828
    const-string v1, "MediaArtistNativeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop begin, filename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stopEncoding()V

    .line 3832
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3841
    const-string v1, "MediaArtistNativeHelper"

    const-string/jumbo v2, "stop end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    return-void

    .line 3833
    :catch_0
    move-exception v0

    .line 3834
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal state exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    throw v0

    .line 3836
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 3837
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Runtime exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    throw v0
.end method

.method stopPreview()J
    .locals 5

    .prologue
    .line 3101
    const-string v2, "MediaArtistNativeHelper"

    const-string/jumbo v3, "stopPreview begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeStopPreview()I

    move-result v2

    int-to-long v0, v2

    .line 3103
    .local v0, "result":J
    const-string v2, "MediaArtistNativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopPreview end, result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    return-wide v0
.end method
