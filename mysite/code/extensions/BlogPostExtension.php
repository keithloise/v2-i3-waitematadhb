<?php
class BlogPostExtension extends DataExtension {

    public static $db = array(
        'EventPostDate'      => 'Date',
        'EventTimeStarted'   => 'Varchar(255)',
        'EventTimeFinished'  => 'Varchar(255)',
        'EventLocation'      => 'Varchar(255)',
        'OverlayPublishDate' => 'Boolean',
        'DisableEntryMeta'   => 'Boolean'
    );

    public function updateCMSFields(FieldList $fields)
    {
        $eventPostDate = DateField::create("EventPostDate", "Post/Event Date")
            ->setConfig('dateformat', 'dd MMM yyyy')
            ->setConfig('showcalendar','true');
        $fields->insertAfter($eventPostDate, 'AuthorNames');
        $OverlayPublishDate = CheckboxField::create("OverlayPublishDate", "Overlay event post date to image");
        $fields->insertAfter($OverlayPublishDate, 'EventPostDate');

        $eventTimeStarted = TextField::create("EventTimeStarted", "Start Time");
        $fields->insertAfter($eventTimeStarted, 'OverlayPublishDate');
        $eventTimeStarted->setDescription("E.g. 9:00AM");
        $eventTimeFinished = TextField::create("EventTimeFinished", "End Time");
        $fields->insertAfter($eventTimeFinished, 'EventTimeStarted');
        $eventTimeFinished->setDescription("Event time finished/started is for Events Page only");
        $eventLocation = TextareaField::create("EventLocation", "Event Location");
        $fields->insertAfter($eventLocation, 'EventTimeFinished');
        $disableEntryMeta = CheckboxField::create("DisableEntryMeta", "Hide blog entry meta");
        $fields->insertAfter($disableEntryMeta, 'EventLocation');
        $disableEntryMeta->setDescription('This will hide the footer Entry Meta of a blog');
    }
}
