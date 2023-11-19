<?php

namespace App\Exports;

use App\Models\Hrm\Attendance\Attendance;

use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use Maatwebsite\Excel\Concerns\WithColumnWidths;

class AttendencesExport implements
    FromCollection,
    WithHeadings

{

    protected $charset = 'UTF-8';
    /**
     * @return \Illuminate\Support\Collection
     */
    public function collection()
    {
        $Attendance = Attendance::where('company_id', auth()->user()->company_id)->where('user_id', auth()->user()->id)->get();
        $Attendance->makeHidden(['id', 'created_at', 'updated_at']);
        // return $salary_record;


        $result = array();
        foreach ($Attendance as $key =>  $record) {

            $result[] = array(

                'Name' => $record->user_id, //B4
                'Date' => $record->date, //C4
                'Department' => $record->company_id, //C4
                'Break' => 0, //D4
                'Break Duration' => 0, //E4
                'Check In' => $record->check_in, //F4
                'Face' => $record->face_image, //G4
                'Checkin Location' => $record->check_in_location, //H4
                'Check Out' => $record->check_out, //I4
                'Checkout Location' => $record->check_out_location, //J4
                'Action' => 'Edit', //L4

            );
        }



        return collect($result);
    }

    public function headings(): array
    {
        return [
            'Name',
            'Date',
            'Department',
            'Break',
            'Break Duration',
            'Check In',
            'Face',
            'Checkin Location',
            'Check Out',
            'Checkout Location',
            'Action' => 'Edit', //L4
        ];
    }
}
